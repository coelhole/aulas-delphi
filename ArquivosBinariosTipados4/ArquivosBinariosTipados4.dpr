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
  numreg:integer;//número de registros

procedure checkfile;
var
  cidadesdb:file of cidade;
begin
  assignFile(cidadesdb,ARQUIVO_CIDADES);
  if fileExists(ARQUIVO_CIDADES) then
    reset(cidadesdb)
  else
    rewrite(cidadesdb);
  numreg:=filesize(cidadesdb);
  closeFile(cidadesdb);
end;

procedure imprimirMenu;
begin
  writeln;
  writeln(#9,'1: CADASTRAR CIDADE');
  writeln(#9,'2: LISTAR CIDADES');
  writeln(#9,'3: MOSTRAR NUMERO DE CIDADES CADASTRADAS');
  writeln(#9,'4: NAVEGAR PELOS REGISTROS');
  writeln(#9,'9: SAIR');
  write('OP: ');
end;

function pedirUF:string;
begin
  repeat
    write(#9,'Digite a UF: ');
    readln(result);
  until length(trim(result))=2;
  result:=uppercase(result);
end;

function pedirCidade:string;
begin
  repeat
    write(#9,'Digite o nome da cidade (3 ou mais caracteres): ');
    readln(result);
  until length(trim(result))>2;
end;

procedure cadastrarCidade;
var
  cid:cidade;
  cidadesdb:file of cidade;
begin
  writeln;

  cid.uf:=pedirUF;
  cid.nome:=pedirCidade;

  assignFile(cidadesdb,ARQUIVO_CIDADES);
  reset(cidadesdb);
  seek(cidadesdb,numreg);
  write(cidadesdb,cid);
  closeFile(cidadesdb);
  inc(numreg);

  writeln;
  imprimirMenu;
end;

procedure listarCidades;
var
  cidadesdb:file of cidade;
  cid:cidade;
  id:integer;
begin
  writeln;
  assignFile(cidadesdb,ARQUIVO_CIDADES);
  reset(cidadesdb);
  id:=0;
  while not eof(cidadesdb) do begin
    read(cidadesdb,cid);
    inc(id);
    writeln(#9,'ID: ',id);
    writeln(#9,'NOME: ',cid.nome);
    writeln(#9,'UF: ',cid.uf);
    writeln;
  end;
  closeFile(cidadesdb);

  imprimirMenu;
end;

procedure mostrarNumeroCidades;
begin
  writeln;
  writeln(#9,'NUMERO DE CIDADES CADASTRADAS: ',numreg);
  imprimirMenu;
end;

procedure navegarPelosRegistros;
  var
    op:string;//opção
  procedure imprimirOpcoesDeNavegacao;
  begin
    writeln(#9#9,'1: IR PARA O PRIMEIRO REGISTRO');
    writeln(#9#9,'2: IR PARA O REGISTRO ANTERIOR');
    writeln(#9#9,'3: IR PARA O PROXIMO REGISTRO');
    writeln(#9#9,'4: IR PARA O ULTIMO REGISTRO');
    writeln(#9#9,'5: ESPECIFICAR O ID DO REGISTRO');
    writeln(#9#9,'9: VOLTAR PARA O MENU PRINCIPAL');
    write(#9,'OP: ');
  end;
  procedure primeiroRegistro;
  begin

  end;
  procedure registroAnterior;
  begin

  end;
  procedure proximoRegistro;
  begin

  end;
  procedure ultimoRegistro;
  begin

  end;
  procedure especificarID;
  begin

  end;
begin
  op:='0';

  repeat
    if op[1]='1' then
      primeiroRegistro
    else
    if op[1]='2' then
      registroAnterior
    else
    if op[1]='3' then
      proximoRegistro
    else
    if op[1]='4' then
      ultimoRegistro
    else
    if op[1]='5' then
      especificarID
    else
      imprimirOpcoesDeNavegacao;

    readln(op);

    if length(op)<>1 then op:='0';
  until op[1]='9';
end;

procedure menu;
var
  op:string;//opção
begin
  op:='0';

  repeat
    if op[1]='1' then
      cadastrarCidade
    else
    if op[1]='2' then
      listarCidades
    else
    if op[1]='3' then
      mostrarNumeroCidades
    else
    if op[1]='4' then
      navegarPelosRegistros
    else
      imprimirMenu;

    readln(op);

    if length(op)<>1 then op:='0';
  until op[1]='9';
end;

begin
  checkfile;
  menu;
end.
