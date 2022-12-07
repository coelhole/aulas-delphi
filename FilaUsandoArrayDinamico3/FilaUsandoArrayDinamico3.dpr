program FilaUsandoArrayDinamico3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  fila:array of integer;

function vazia:boolean;
begin
  result:=length(fila)=0;
end;

procedure inserir(const item:integer);
begin
  setLength(fila,length(fila)+1);
  fila[length(fila)-1]:=item;
end;

function remover:integer;
var
  i:integer;
begin
  if vazia then begin
    writeln('a fila esta vazia');
    result:=-1;
    exit;
  end;
  result:=fila[0];
  move(fila[1],fila[0],(length(fila)-1)*sizeOf(integer));
  setLength(fila,length(fila)-1);
end;

procedure reset;
begin
  setLength(fila,0);
end;

begin
  writeln('fila vazia: ',vazia);
  inserir(2);
  writeln('item 2 inserido');
  inserir(4);
  writeln('item 4 inserido');
  inserir(87);
  writeln('item 87 inserido');
  writeln('fila vazia: ',vazia);
  writeln('item ',remover,' removido');
  writeln('fila vazia: ',vazia);
  writeln('item ',remover,' removido');
  writeln('fila vazia: ',vazia);
  writeln('item ',remover,' removido');
  writeln('fila vazia: ',vazia);
  writeln(remover);
  inserir(55);
  writeln('item 55 inserido');
  writeln('fila vazia: ',vazia);
  writeln('item ',remover,' removido');
  writeln('fila vazia: ',vazia);
  writeln(remover);
  inserir(90);
  writeln('item 90 inserido');
  writeln('fila vazia: ',vazia);
  reset;
  writeln('fila resetada');
  writeln('fila vazia: ',vazia);
  readln;
end.

