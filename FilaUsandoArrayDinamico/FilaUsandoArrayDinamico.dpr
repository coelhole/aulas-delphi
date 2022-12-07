program FilaUsandoArrayDinamico;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  fila:array of integer;
  i:integer=0;

function vazia:boolean;
begin
  result:=length(fila)=i;
end;

procedure inserir(const item:integer);
begin
  setLength(fila,length(fila)+1);
  fila[length(fila)-1]:=item;
end;

//!IMPORTANTE! NESTA implementação de fila, a memória não é desalocada!
function remover:integer;
begin
  if vazia then begin
    writeln('a fila esta vazia');
    result:=-1;
    exit;
  end;
  result:=fila[i];
  fila[i]:=0;
  inc(i);
end;

procedure reset;
begin
  setLength(fila,0);
  i:=0;
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
