program FilaUsandoArray;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  CAPACIDADE_FILA = 1000;

var
  fila:array[1..CAPACIDADE_FILA] of integer;
  primeiraPosicao:integer=0;
  ultimaPosicao:integer=0;

function vazia:boolean;
begin
  result:=ultimaPosicao=0;
end;

procedure inserir(const item:integer);
begin
  if ultimaPosicao=CAPACIDADE_FILA then begin
    writeln('fila cheia: nao eh possivel inserir um novo item');
    exit;
  end;
  inc(ultimaPosicao);
  fila[ultimaPosicao]:=item;
  if primeiraPosicao=0 then primeiraPosicao:=1;
end;

function remover:integer;
begin
  if vazia then begin
    writeln('a fila esta vazia');
    result:=-1;
    exit;
  end;
  result:=fila[primeiraPosicao];
  fila[primeiraPosicao]:=0;
  inc(primeiraPosicao);
  if primeiraPosicao>ultimaPosicao then begin
    primeiraPosicao:=0;
    ultimaPosicao:=0;
  end;
end;

procedure reset;
begin
  primeiraPosicao:=0;
  ultimaPosicao:=0;
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
 