program ListaLigada;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  pItemLista = ^itemLista;

  itemLista=record
    datum:word;
    proximo:pItemLista;
  end;

var
  primeiroNo:pItemLista=nil;
  ultimoNo:pItemLista=nil;

procedure criarLista(const datum:word);
begin
  if primeiroNo=nil then begin
    new(primeiroNo);
    primeiroNo^.datum := datum;
    primeiroNo^.proximo := nil;
    ultimoNo := primeiroNo;
  end;
end;

procedure inserirNoFim(const datum:word);
var
  n:pItemLista;
begin
  if ultimoNo=nil then
    criarLista(datum)
  else begin
    new(n);
    n^.datum := datum;
    n^.proximo := nil;
    ultimoNo^.proximo := n;
    ultimoNo := n;
  end;
end;

procedure inserirNoComeco(const datum:word);
var
  n:pItemLista;
begin
  if primeiroNo=nil then
    criarLista(datum)
  else begin
    new(n);
    n^.datum := datum;
    n^.proximo := primeiroNo;
    primeiroNo := n;
  end;
end;

procedure imprimirLista;
var
  meuItem:pItemLista;
begin
  meuItem:=primeiroNo;
  while meuItem<> nil do begin
    writeln(meuItem^.datum);
    meuItem := meuItem^.proximo;
  end;
end;

begin
  criarLista(23);

  inserirNoFim(54);
  inserirNoFim(543);
  inserirNoFim(100);
  inserirNoFim(750);
  inserirNoFim(231);
  inserirNoFim(2048);
  inserirNoFim(512);
  imprimirLista;

  inserirNoComeco(1024);
  writeln;
  imprimirLista;

  inserirNoComeco(7);
  writeln;
  imprimirLista;

  readln;
end.
 