program LerArquivoMunicipiosJSON;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  ARQUIVO_JSON='C:\Users\Administrador\Desktop\aulas-delphi\aulas-de-programacao-delphi\LerArquivoMunicipiosJSON\municipios.json';
  FECHA_MUNICIPIO='"}}}}}';

type
  regiao=record
    id
      :integer;
    nome
      :string;
    sigla
      :char;
  end;

  uf=record
    id
      :integer;
    nome,sigla
      :string;
    regiao
      :regiao;
  end;

  mesorregiao=record
    id
      :integer;
    nome
      :string;
    uf
      :uf;
  end;

  microrregiao=record
    id
      :integer;
    nome
      :string;
    mesorregiao
      :mesorregiao;
  end;

  regiaointermediaria=record
    id
      :integer;
    nome
      :string;
    uf
      :uf;
  end;

  regiaoimediata=record
    id
      :integer;
    nome
      :string;
    regiaointermediaria
      :regiaointermediaria;
  end;

  municipio=record
    id
      :integer;
    nome
      :string;
    microrregiao
      :microrregiao;
    regiaoimediata
      :regiaoimediata;
  end;

function stringMunicipios(const caminhoArquivoJSON:ansistring):ansistring;
var
  arquivoMunicipios:textfile;
begin
  assignFile(arquivoMunicipios,caminhoArquivoJSON);
  reset(arquivoMunicipios);
  readln(arquivoMunicipios,result);
  closeFile(arquivoMunicipios);
  result:=copy(result,2,length(result)-2);//remove da string o primeiro caractere '[' e o último ']'
end;

function strToMunicipio(str:string):municipio;
var
  p1,p2:integer;
begin
  result.id:=strToInt(copy(str,7,7));
  p1:=ansipos('","',str);
  result.nome:=copy(str,23,p1-23);
  p1:=ansipos('"microrregiao":{"id":',str);
  result.microrregiao.id:=strToInt(copy(str,p1+21,5));
  p2:=ansipos('","meso',str);
  result.microrregiao.nome:=copy(str,p1+35,p2-p1-35);
  result.microrregiao.mesorregiao.id:=strToInt(copy(str,p2+22,4));
  p1:=ansipos('","UF":{"id":',str);
  result.microrregiao.mesorregiao.nome:=copy(str,p2+35,p1-p2-35);
  result.microrregiao.mesorregiao.uf.id:=strToInt(copy(str,p1+13,2));
  result.microrregiao.mesorregiao.uf.sigla:=copy(str,p1+25,2);
  p2:=ansipos('","regiao":{"id":',str);
  result.microrregiao.mesorregiao.uf.nome:=copy(str,p1+37,p2-p1-37);
  result.microrregiao.mesorregiao.uf.regiao.id:=strToInt(copy(str,p2+17,1));
  result.microrregiao.mesorregiao.uf.regiao.sigla:=copy(str,p2+28,1)[1];
  p1:=ansipos('"}}}},"regiao-imediata',str);
  result.microrregiao.mesorregiao.uf.regiao.nome:=copy(str,p2+39,p1-p2-39);
  result.regiaoimediata.id:=strToInt(copy(str,p1+30,6));
  p2:=ansipos('","regiao-intermed',str);
  result.regiaoimediata.nome:=copy(str,p1+45,p2-p1-45);
  str:=copy(str,p2+31,length(str)-p2-31);
  result.regiaoimediata.regiaointermediaria.id:=strToInt(copy(str,1,4));
  p1:=ansipos('","UF":',str);
  result.regiaoimediata.regiaointermediaria.nome:=copy(str,14,p1-14);
  result.regiaoimediata.regiaointermediaria.uf:=result.microrregiao.mesorregiao.uf;
end;

procedure imprimirMunicipio(const municipio:municipio);
begin
  writeln('MUNICIPIO-ID: ',municipio.id);
  writeln('MUNICIPIO-NOME: ',municipio.nome);
  writeln('  MICRORREGIAO-ID: ',municipio.microrregiao.id);
  writeln('  MICRORREGIAO-NOME: ',municipio.microrregiao.nome);
  writeln('    MESORREGIAO-ID: ',municipio.microrregiao.mesorregiao.id);
  writeln('    MESORREGIAO-NOME: ',municipio.microrregiao.mesorregiao.nome);
  writeln('      UF-ID: ',municipio.microrregiao.mesorregiao.uf.id);
  writeln('      UF-NOME: ',municipio.microrregiao.mesorregiao.uf.nome);
  writeln('      UF-SIGLA: ',municipio.microrregiao.mesorregiao.uf.sigla);
  writeln('        REGIAO-ID: ',municipio.microrregiao.mesorregiao.uf.regiao.id);
  writeln('        REGIAO-NOME: ',municipio.microrregiao.mesorregiao.uf.regiao.nome);
  writeln('        REGIAO-SIGLA: ',municipio.microrregiao.mesorregiao.uf.regiao.sigla);
  writeln('  REGIAO IMEDIATA-ID: ',municipio.regiaoimediata.id);
  writeln('  REGIAO IMEDIATA-NOME: ',municipio.regiaoimediata.nome);
  writeln('    REGIAO INTERMEDIARIA-ID: ',municipio.regiaoimediata.regiaointermediaria.id);
  writeln('    REGIAO INTERMEDIARIA-NOME: ',municipio.regiaoimediata.regiaointermediaria.nome);
  writeln('      UF-ID: ',municipio.regiaoimediata.regiaointermediaria.uf.id);
  writeln('      UF-NOME: ',municipio.regiaoimediata.regiaointermediaria.uf.nome);
  writeln('      UF-SIGLA: ',municipio.regiaoimediata.regiaointermediaria.uf.sigla);
  writeln('        REGIAO-ID: ',municipio.regiaoimediata.regiaointermediaria.uf.regiao.id);
  writeln('        REGIAO-NOME: ',municipio.regiaoimediata.regiaointermediaria.uf.regiao.nome);
  writeln('        REGIAO-SIGLA: ',municipio.regiaoimediata.regiaointermediaria.uf.regiao.sigla);
  writeln;
  writeln;
  writeln;
end;

var
  source:ansistring;

function proximoMunicipio:string;
var
  posicaoFechaMunicipio:integer;
begin
  posicaoFechaMunicipio:=ansipos(FECHA_MUNICIPIO,source);
  if posicaoFechaMunicipio=0 then exit;
  result:=copy(source,1,posicaoFechaMunicipio+length(FECHA_MUNICIPIO)-1);
  source:=copy(source,posicaoFechaMunicipio+length(FECHA_MUNICIPIO)+1,length(source)-posicaoFechaMunicipio-length(FECHA_MUNICIPIO));
end;

var
  str:string;

begin
  source:=stringMunicipios(ARQUIVO_JSON);
  repeat
    str:=proximoMunicipio;
    imprimirMunicipio(strToMunicipio(str));
  until source='';
  readln;
end.
