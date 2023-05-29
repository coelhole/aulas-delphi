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

procedure removerPrimeiroNo;
var
  tmp:pItemLista;
begin
  if primeiroNo<>nil then begin
    if primeiroNo^.proximo=nil then begin
      dispose(primeiroNo);
      primeiroNo:=nil;
      ultimoNo:=nil;
    end else begin
      tmp:=primeiroNo^.proximo;
      dispose(primeiroNo);
      primeiroNo:=tmp;      
    end;
  end;
end;

procedure inserirNaPosicaoN(const n:integer; const datum:word);//consideramos N=0 a primeira posição
var
  i:integer;
  noAnterior,noSeguinte,noNovo:pItemLista;
begin
  if n<0 then begin
    writeln('posicao invalida: ',n,' < 0');
    exit;
  end;

  if primeiroNo=nil then begin
    criarLista(datum);
    //writeln('Lista criada: no inserido na primeira posicao (posicao 0)');
    exit;
  end;

  i:=0;
  noAnterior:=nil;
  noSeguinte:=primeiroNo;
  while (i<n) and (noSeguinte<>nil) do begin
    noAnterior:=noSeguinte;
    noSeguinte:=noSeguinte^.proximo;
    inc(i);
  end;
  new(noNovo);
  noNovo^.datum:=datum;
  if noAnterior<>nil then
    noAnterior^.proximo:=noNovo;
  noNovo^.proximo:=noSeguinte;
  if noSeguinte=primeiroNo then
    primeiroNo:=noNovo;
  //writeln('No inserido na posicao ',i);
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
  writeln;

  inserirNoComeco(1024);
  writeln;
  imprimirLista;
  writeln;

  inserirNoComeco(7);
  writeln;
  imprimirLista;
  writeln;

  removerPrimeiroNo;
  writeln;
  imprimirLista;
  writeln;

  removerPrimeiroNo;
  writeln;
  imprimirLista;
  writeln;

  inserirNaPosicaoN(-1,777);
  writeln;
  imprimirLista;
  writeln;

  inserirNaPosicaoN(0,659);
  writeln;
  imprimirLista;
  writeln;

  inserirNaPosicaoN(3,878);
  writeln;
  imprimirLista;
  writeln;

  readln;
end.
