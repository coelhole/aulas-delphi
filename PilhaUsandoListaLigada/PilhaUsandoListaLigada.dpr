program PilhaUsandoListaLigada;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  pItemPilha = ^itemPilha;

  itemPilha=record
    datum:word;
    abaixo:pItemPilha;
  end;

var
  topo:pItemPilha=nil;

procedure empilhar(const datum:word);
  procedure criarPilha(const datum:word);
  begin
    if topo=nil then begin
      new(topo);
      topo^.datum := datum;
      topo^.abaixo := nil;
    end;
  end;
var
  novoTopo:pItemPilha;
begin
  if topo=nil then
    criarPilha(datum)
  else begin
    new(novoTopo);
    novoTopo^.datum := datum;
    novoTopo^.abaixo := topo;
    topo := novoTopo;
  end;
end;

function desempilhar:integer;
var
  novoTopo:pItemPilha;
begin
  result:=-1;
  if topo<>nil then begin
    result:=topo^.datum;
    novoTopo:=topo^.abaixo;
    dispose(topo);
    topo:=novoTopo;
  end;
end;

function vazia:boolean;
begin
  result:=topo=nil;
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

  readln;
end.
