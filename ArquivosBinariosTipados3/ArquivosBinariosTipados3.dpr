program ArquivosBinariosTipados3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  ARQUIVO_CIDADES='C:\Users\Administrador\Desktop\aulas-delphi\aulas-de-programacao-delphi\ArquivosBinariosTipados3\cidades';

type
  cidade=record
    nome:string[80];
    uf:string[2]
  end;

var
  cidades:array of cidade;
  op:string;//opção

procedure carregarCidades;
var
  cidadesdb:file of cidade;
  cid:cidade;
  i:integer;
begin
  if not fileExists(ARQUIVO_CIDADES) then
    exit;

  assignFile(cidadesdb,ARQUIVO_CIDADES);
  reset(cidadesdb);
  while not eof(cidadesdb) do begin
    read(cidadesdb,cid);
    i:=length(cidades)+1;
    setlength(cidades,i);
    cidades[i-1]:=cid;
  end;
  closeFile(cidadesdb);
end;

procedure imprimirMenu;
begin
  writeln('1: CADASTRAR CIDADE');
  writeln('2: LISTAR CIDADES');
  writeln('9: SAIR');
  write('OP: ');
end;

procedure cadastrarCidade;
var
  cidade,uf:string;
  i:integer;
begin
  repeat
    write('Digite a UF: ');
    readln(uf);
  until length(trim(uf))=2;
  uf:=uppercase(uf);

  repeat
    write('Digite o nome da cidade (3 ou mais caracteres): ');
    readln(cidade);
  until length(trim(cidade))>2;

  i:=length(cidades)+1;
  setlength(cidades,i);
  cidades[i-1].nome:=cidade;
  cidades[i-1].uf:=uf;

  imprimirMenu;
end;

procedure salvarCidades;
var
  cidadesdb:file of cidade;
  i:integer;
begin
  assignFile(cidadesdb,ARQUIVO_CIDADES);
  rewrite(cidadesdb);
  for i:=0 to length(cidades)-1 do
    write(cidadesdb,cidades[i]);
  closeFile(cidadesdb);
end;

procedure listarCidades;
var
  i:integer;
begin
  for i:=0 to length(cidades)-1 do begin
    writeln('ID: ',i+1);
    writeln('NOME: ',cidades[i].nome);
    writeln('UF: ',cidades[i].uf);
    writeln;
  end;

  imprimirMenu;
end;

procedure menu;
begin
  imprimirMenu;

  repeat
    readln(op);

    if length(op)<>1 then op:='0';

    if op[1]='1' then
      cadastrarCidade
    else
    if op[1]='2' then
      listarCidades;
  until op[1]='9';
end;

begin
  carregarCidades;

  menu;

  salvarCidades;
end.
