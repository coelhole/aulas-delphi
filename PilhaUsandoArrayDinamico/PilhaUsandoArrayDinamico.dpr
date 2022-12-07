program PilhaUsandoArrayDinamico;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  pilha:array of integer;

function vazia:boolean;
begin
  result:=length(pilha)=0;
end;

procedure empilhar(const item:integer);
begin
  setLength(pilha,length(pilha)+1);
  pilha[length(pilha)-1]:=item;
end;

function desempilhar:integer;
begin
  if vazia then begin
    writeln('a pilha esta vazia');
    result:=-1;
    exit;
  end;
  result:=pilha[length(pilha)-1];
  setLength(pilha,length(pilha)-1);
end;

function topo:integer;
begin
  result:=-1;
  if not vazia then
    result:=pilha[length(pilha)-1]
  else
    writeln('a esta pilha vazia');
end;

procedure reset;
begin
  setLength(pilha,0);
end;

begin
  writeln('pilha vazia: ',vazia);
  empilhar(2);
  writeln('item 2 colocado no topo da pilha');
  empilhar(4);
  writeln('item 4 colocado no topo da pilha');
  empilhar(87);
  writeln('item 87 colocado no topo da pilha');
  writeln('pilha vazia: ',vazia);
  writeln('item ',desempilhar,' removido do topo da pilha');
  writeln('pilha vazia: ',vazia);
  writeln('item ',desempilhar,' removido do topo da pilha');
  writeln('pilha vazia: ',vazia);
  writeln('item ',desempilhar,' removido do topo da pilha');
  writeln('pilha vazia: ',vazia);
  writeln(desempilhar);
  empilhar(55);
  writeln('item 55 colocado no topo da pilha');
  writeln('pilha vazia: ',vazia);
  writeln('item ',desempilhar,' removido do topo da pilha');
  writeln('pilha vazia: ',vazia);
  writeln(desempilhar);
  empilhar(90);
  writeln('item 90 colocado no topo da pilha');
  writeln('pilha vazia: ',vazia);
  reset;
  writeln('pilha resetada');
  writeln('pilha vazia: ',vazia);

  readln;
end.
