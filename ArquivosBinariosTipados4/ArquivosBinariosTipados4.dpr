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
  numreg,//número de registros
  id//id do registro atual
    :integer;

  cid:cidade;

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
  if numreg>0 then
    id:=1
  else
    id:=0;
  closeFile(cidadesdb);
end;

procedure imprimirMenu;
begin
  writeln;
  writeln(#9,'0: CADASTRAR CIDADE');
  writeln(#9,'1: LISTAR CIDADES');
  writeln(#9,'2: MOSTRAR NUMERO DE CIDADES CADASTRADAS');
  writeln(#9,'3: EXIBIR O REGISTRO ATUAL');
  writeln(#9,'4: IR PARA O PRIMEIRO REGISTRO');
  writeln(#9,'5: IR PARA O REGISTRO ANTERIOR');
  writeln(#9,'6: IR PARA O PROXIMO REGISTRO');
  writeln(#9,'7: IR PARA O ULTIMO REGISTRO');
  writeln(#9,'8: ESPECIFICAR O ID DO REGISTRO');
  writeln(#9,'9: SAIR');
  write('OP: ');
end;

procedure imprimirRegistro;
begin
  writeln(#9,'ID: ',id);
  writeln(#9,'NOME: ',cid.nome);
  writeln(#9,'UF: ',cid.uf);
  writeln;
  imprimirMenu;
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
  writeln(#9,'CIDADE CADASTRADA COM SUCESSO!');

  imprimirMenu;
end;

procedure listarCidades;
var
  cidadesdb:file of cidade;
  i:integer;
begin
  writeln;
  assignFile(cidadesdb,ARQUIVO_CIDADES);
  reset(cidadesdb);
  i:=0;
  while not eof(cidadesdb) do begin
    read(cidadesdb,cid);
    inc(i);
    writeln(#9,'ID: ',i);
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

procedure exibirRegistroAtual;
var
  cidadesdb:file of cidade;
begin
  assignFile(cidadesdb,ARQUIVO_CIDADES);
  reset(cidadesdb);
  seek(cidadesdb,id-1);
  read(cidadesdb,cid);
  closeFile(cidadesdb);
  imprimirRegistro;
end;

procedure primeiroRegistro;
var
  cidadesdb:file of cidade;
begin
  assignFile(cidadesdb,ARQUIVO_CIDADES);
  reset(cidadesdb);
  read(cidadesdb,cid);
  closeFile(cidadesdb);
  id:=1;
  imprimirRegistro;
end;

procedure ultimoRegistro;
var
  cidadesdb:file of cidade;
begin
  assignFile(cidadesdb,ARQUIVO_CIDADES);
  reset(cidadesdb);
  seek(cidadesdb,numreg-1);
  read(cidadesdb,cid);
  closeFile(cidadesdb);
  id:=numreg;
  imprimirRegistro;
end;

procedure registroAnterior;
var
  cidadesdb:file of cidade;
begin
  if id=1 then
    primeiroRegistro
  else begin
    assignFile(cidadesdb,ARQUIVO_CIDADES);
    reset(cidadesdb);
    id:=id-1;
    seek(cidadesdb,id-1);
    read(cidadesdb,cid);
    closeFile(cidadesdb);
    imprimirRegistro;
  end;
end;

procedure proximoRegistro;
var
  cidadesdb:file of cidade;
begin
  if id=numreg then
    ultimoRegistro
  else begin
    assignFile(cidadesdb,ARQUIVO_CIDADES);
    reset(cidadesdb);
    seek(cidadesdb,id);
    inc(id);
    read(cidadesdb,cid);
    closeFile(cidadesdb);
    imprimirRegistro;
  end;
end;

procedure especificarID;
var
  cidadesdb:file of cidade;
  i:integer;
begin
  //se o usuário não digitar um inteiro...
  write(#9#9,'Digite o id da cidade: ');
  read(i);

  if i>numreg then begin
    writeln('ID invalido: nao existente');
    exit;
  end
  else
  if i<1 then begin
    writeln('ID invalido: deve ser positivo');
    exit;
  end;

  assignFile(cidadesdb,ARQUIVO_CIDADES);
  reset(cidadesdb);
  seek(cidadesdb,i-1);
  read(cidadesdb,cid);
  closeFile(cidadesdb);
  id:=i;
  writeln;
  imprimirRegistro;
end;

procedure opcaoInvalida;
begin
  writeln(#9,'OPCAO INVALIDA!');
  writeln;
  imprimirMenu;
end;

procedure menu;
var
  op:string;//opção
begin
  imprimirMenu;

  repeat
    readln(op);

    if length(op)<>1 then
      opcaoInvalida
    else
    if op[1]='0' then
      cadastrarCidade
    else
    if op[1]='1' then
      listarCidades
    else
    if op[1]='2' then
      mostrarNumeroCidades
    else
    if op[1]='3' then
      exibirRegistroAtual
    else
    if op[1]='4' then
      primeiroRegistro
    else
    if op[1]='5' then
      registroAnterior
    else
    if op[1]='6' then
      proximoRegistro
    else
    if op[1]='7' then
      ultimoRegistro
    else
    if op[1]='8' then
      especificarID
    else
    if op[1]<>'9' then
      opcaoInvalida;

  until op[1]='9';
end;

begin
  checkfile;
  menu;
end.
