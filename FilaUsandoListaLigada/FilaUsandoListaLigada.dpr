program FilaUsandoListaLigada;

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

procedure inserir(const datum:word);
  procedure criarLista(const datum:word);
  begin
    if primeiroNo=nil then begin
      new(primeiroNo);
      primeiroNo^.datum := datum;
      primeiroNo^.proximo := nil;
      ultimoNo := primeiroNo;
    end;
  end;
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

function remover:integer;
var
  tmp:pItemLista;
begin
  if primeiroNo<>nil then begin
    result:=primeiroNo^.datum;
    if primeiroNo^.proximo=nil then begin
      dispose(primeiroNo);
      primeiroNo:=nil;
      ultimoNo:=nil;
    end else begin
      tmp:=primeiroNo^.proximo;
      dispose(primeiroNo);
      primeiroNo:=tmp;
    end;
  end else result:=-1;
end;

begin
  inserir(54);
  writeln('inserir(54);');

  inserir(543);
  writeln('inserir(543);');

  inserir(100);
  writeln('inserir(100);');

  inserir(750);
  writeln('inserir(750);');

  inserir(231);
  writeln('inserir(231);');

  inserir(2048);
  writeln('inserir(2048);');

  inserir(512);
  writeln('inserir(512);');

  inserir(1024);
  writeln('inserir(1024);');

  inserir(7);
  writeln('inserir(7);');

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  inserir(10000);
  writeln('inserir(10000);');

  inserir(9342);
  writeln('inserir(9342);');

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  writeln('remover;');
  writeln('item removido: ',remover);

  readln;
end.
