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

function vazia:boolean;
begin
  result:=primeiroNo=nil;
end;

begin
  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(54);
  writeln('inserir(54);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(543);
  writeln('inserir(543);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(100);
  writeln('inserir(100);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(750);
  writeln('inserir(750);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(231);
  writeln('inserir(231);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(2048);
  writeln('inserir(2048);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(512);
  writeln('inserir(512);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(1024);
  writeln('inserir(1024);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(7);
  writeln('inserir(7);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(10000);
  writeln('inserir(10000);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  inserir(9342);
  writeln('inserir(9342);');

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  writeln('remover;');
  writeln('item removido: ',remover);

  if vazia then
    writeln('Fila vazia? Sim!')
  else
    writeln('Fila vazia? Nao!');

  readln;
end.
