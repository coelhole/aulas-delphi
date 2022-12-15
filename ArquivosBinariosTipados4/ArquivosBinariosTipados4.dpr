program ArquivosBinariosTipados4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  ARQUIVO_CIDADES='C:\Users\Administrador\Desktop\aulas-delphi\aulas-de-programacao-delphi\ArquivosBinariosTipados4\cidades';

type
  cidade=record
    nome:string[80];
    uf:string[2]
  end;

var
  op:string;

procedure imprimeMenu;
begin
  writeln('1: CADASTRAR CIDADE');
  writeln('2: LISTAR CIDADES');
  writeln('3: MOSTRAR NUMERO DE CIDADES CADASTRADAS');
  writeln('9: SAIR');
  write('OP: ');
end;

procedure cadastrarCidade;
var
  nome,uf:string;
  cid:cidade;
  cidadesdb:file of cidade;
begin
  repeat
    write('Digite a UF: ');
    readln(uf);
  until length(trim(uf))=2;

  repeat
    write('Digite o nome da cidade (>= 3 caracteres): ');
    readln(nome);
  until length(trim(nome))>2;

  cid.nome:=nome;
  cid.uf:=uf;

  assignFile(cidadesdb,ARQUIVO_CIDADES);
  if fileExists(ARQUIVO_CIDADES) then begin
    reset(cidadesdb);
    seek(cidadesdb,filesize(cidadesdb));
  end else
    rewrite(cidadesdb);
  write(cidadesdb,cid);
  closeFile(cidadesdb);

  imprimeMenu;
end;

procedure listarCidades;
var
  cidadesdb:file of cidade;
  cid:cidade;
begin
  if not fileExists(ARQUIVO_CIDADES) then
    exit;

  assignFile(cidadesdb,ARQUIVO_CIDADES);
  reset(cidadesdb);

  while not eof(cidadesdb) do begin
    read(cidadesdb,cid);
    writeln('NOME: ',cid.nome);
    writeln('UF: ',cid.uf);
    writeln;
  end;
  closeFile(cidadesdb);

  imprimeMenu;
end;

procedure mostrarNumeroCidades;
var
  cidadesdb:file of cidade;
begin
  //
  //
  //
end;

procedure menu;
begin
  imprimeMenu;

  repeat
    readln(op);

    if length(op)<>1 then op:='0';

    if op[1]='1' then
      cadastrarCidade
    else
    if op[1]='2' then
      listarCidades
    else
    if op[1]='3' then
      mostrarNumeroCidades;
  until op[1]='9';
end;

begin
  menu;
end.
