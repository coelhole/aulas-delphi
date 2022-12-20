program ListaDuplamenteLigada;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  pItemLista = ^itemLista;

  itemLista=record
    datum:word;
    anterior,
    proximo
      :pItemLista;
  end;

var
  primeiroNo:pItemLista=nil;
  ultimoNo:pItemLista=nil;

procedure criarLista(const datum:word);
begin
  if primeiroNo=nil then begin
    new(primeiroNo);
    primeiroNo^.datum := datum;
    primeiroNo^.anterior := nil;
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
    n^.anterior := ultimoNo;
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
    n^.anterior := nil;
    n^.proximo := primeiroNo;
    primeiroNo^.anterior := n;
    primeiroNo := n;
  end;
end;

procedure imprimirLista;
var
  meuItem:pItemLista;
begin
  meuItem:=primeiroNo;
  while meuItem<>nil do begin
    writeln(meuItem^.datum);
    meuItem := meuItem^.proximo;
  end;
end;

procedure imprimirListaDeTrasParaFrente;
var
  meuItem:pItemLista;
begin
  meuItem:=ultimoNo;
  while meuItem<>nil do begin
    writeln(meuItem^.datum);
    meuItem := meuItem^.anterior;
  end;
end;

procedure removerPrimeiroNo;
var
  tmp:pItemLista;
begin
  if primeiroNo<>nil then begin//removemos apenas se a lista não é vazia
    tmp:=primeiroNo^.proximo;
    if tmp<>nil then
      tmp^.anterior:=nil;
    dispose(primeiroNo);
    primeiroNo:=tmp;
  end;
end;

procedure removerUltimoNo;
var
  tmp:pItemLista;
begin
  if ultimoNo<>nil then begin//removemos apenas se a lista não é vazia
    tmp:=ultimoNo^.anterior;
    if tmp<>nil then
      tmp^.proximo:=nil;
    dispose(ultimoNo);
    ultimoNo:=tmp;
  end;
end;

begin
  criarLista(23);
  writeln('criarLista(23);');

  inserirNoFim(54);
  writeln('inserirNoFim(54);');
  inserirNoFim(543);
  writeln('inserirNoFim(543);');
  inserirNoFim(100);
  writeln('inserirNoFim(100);');
  inserirNoFim(750);
  writeln('inserirNoFim(750);');
  inserirNoFim(231);
  writeln('inserirNoFim(231);');
  inserirNoFim(2048);
  writeln('inserirNoFim(2048);');
  inserirNoFim(512);
  writeln('inserirNoFim(512);');

  writeln;
  writeln('Lista do primeiro ao ultimo item');
  imprimirLista;

  writeln;
  writeln('Lista do ultimo ao primeiro item');
  imprimirListaDeTrasParaFrente;

  writeln;
  inserirNoComeco(1024);
  writeln('inserirNoComeco(1024);');

  writeln;
  writeln('Lista do primeiro ao ultimo item');
  imprimirLista;

  writeln;
  writeln('Lista do ultimo ao primeiro item');
  imprimirListaDeTrasParaFrente;

  writeln;
  inserirNoComeco(7);
  writeln('inserirNoComeco(7);');

  writeln;
  writeln('Lista do primeiro ao ultimo item');
  imprimirLista;

  writeln;
  writeln('Lista do ultimo ao primeiro item');
  imprimirListaDeTrasParaFrente;

  writeln;
  removerPrimeiroNo;
  writeln('removerPrimeiroNo;');

  writeln;
  writeln('Lista do primeiro ao ultimo item');
  imprimirLista;

  writeln;
  writeln('Lista do ultimo ao primeiro item');
  imprimirListaDeTrasParaFrente;

  writeln;
  removerPrimeiroNo;
  writeln('removerPrimeiroNo;');

  writeln;
  writeln('Lista do primeiro ao ultimo item');
  imprimirLista;

  writeln;
  writeln('Lista do ultimo ao primeiro item');
  imprimirListaDeTrasParaFrente;

  writeln;
  removerUltimoNo;
  writeln('removerUltimoNo;');

  writeln;
  writeln('Lista do primeiro ao ultimo item');
  imprimirLista;

  writeln;
  writeln('Lista do ultimo ao primeiro item');
  imprimirListaDeTrasParaFrente;

  writeln;
  removerUltimoNo;
  writeln('removerUltimoNo;');

  writeln;
  writeln('Lista do primeiro ao ultimo item');
  imprimirLista;

  writeln;
  writeln('Lista do ultimo ao primeiro item');
  imprimirListaDeTrasParaFrente;

  readln;
end.
