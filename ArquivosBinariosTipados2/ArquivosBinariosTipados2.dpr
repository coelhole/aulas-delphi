program ArquivosBinariosTipados2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  ARQUIVO_CIDADES='C:\Users\Administrador\Desktop\aulas-delphi\aulas-de-programacao-delphi\ArquivosBinariosTipados2\cidades';

type
  cidade=record
    nome:string[80];
    uf:string[2]
  end;

var
  cidades:file of cidade;
  cid:cidade;

begin
  assignFile(cidades,ARQUIVO_CIDADES);

  //escrita
  rewrite(cidades);
  cid.nome:='Londrina';
  cid.uf:='PR';
  write(cidades,cid);
  cid.nome:='Jandira';
  cid.uf:='PR';
  write(cidades,cid);
  cid.nome:='Lorena';
  cid.uf:='SP';
  write(cidades,cid);
  cid.nome:='Sorocaba';
  cid.uf:='SP';
  write(cidades,cid);
  cid.nome:='Botucatu';
  cid.uf:='SP';
  write(cidades,cid);
  cid.nome:='Duque de Caxias';
  cid.uf:='RJ';
  write(cidades,cid);
  cid.nome:='Rio de Janeiro';
  cid.uf:='RJ';
  write(cidades,cid);
  closeFile(cidades);

  //leitura
  reset(cidades);
  while not eof(cidades) do begin
    read(cidades,cid);
    writeln('Nome: ',cid.nome);
    writeln('UF: ',cid.uf);
    writeln;
  end;

  readln;
end.
