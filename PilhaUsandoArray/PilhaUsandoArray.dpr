program PilhaUsandoArray;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  CAPACIDADE_PILHA = 1000;

var
  pilha:array[1..CAPACIDADE_PILHA] of integer;
  posicaoTopo:integer=0;

function vazia:boolean;
begin
  result:=posicaoTopo=0;
end;

function cheia:boolean;
begin
  result:=posicaoTopo=CAPACIDADE_PILHA;
end;

procedure empilhar(const item:integer);
begin
  if cheia then begin
    writeln('pilha cheia: nao eh possivel colocar um novo item na pilha');
    exit;
  end;
  pilha[posicaoTopo+1]:=item;
  inc(posicaoTopo);
end;

function desempilhar:integer;
begin
  if vazia then begin
    writeln('a pilha esta vazia');
    result:=-1;
    exit;
  end;
  result:=pilha[posicaoTopo];
  dec(posicaoTopo);
end;

function topo:integer;
begin
  result:=-1;
  if not vazia then
    result:=pilha[posicaoTopo]
  else
    writeln('a esta pilha vazia');
end;

procedure reset;
begin
  posicaoTopo:=0;
end;

var
  i,item:integer;

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

  for i:=1 to 1000 do begin
    item:=1+random(1000000000);
    empilhar(item);
    writeln('item ',item,' colocado no topo da pilha');
  end;

  writeln('item no topo da pilha: ',topo);

  item:=1+random(50);
  writeln('tentando acrescentar a pilha o item ',item);
  empilhar(item);//tentamos aqui empilhar um novo item: uma mensagem de erro sera exibida (porque a pilha esta cheia)

  writeln('removendo o item do topo');
  desempilhar;

  writeln('item no topo da pilha: ',topo);

  item:=1+random(50);
  writeln('tentando acrescentar a pilha o item ',item);
  empilhar(item);//agora conseguimos (porque toda vez que se chama desempilhar uma posicao eh liberada)
  if item=topo then
    writeln('conseguimos adicionar o item ',item,' ao topo da pilha');

  readln;
end.

