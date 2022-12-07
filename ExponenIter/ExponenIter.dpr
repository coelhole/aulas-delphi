{
  Implemente uma função que, dados dois números inteiros x e n, calcule o valor de x^n usando uma estrutura de repetição.
}
program ExponenIter;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function exponen(const base, expoen:integer):integer;
var
  n:integer;
begin
  if (base<=0) or (expoen<0) then begin
    writeln('erro: condicao base > 0 e expoen >= 0 nao satisfeita');
    exit;
  end;

  result:=1;

  for n:=1 to expoen do
    result:=base*result;
end;

var
  i,j:integer;

begin
  for i:=1 to 8 do
    for j:=0 to 10 do
      writeln(i,'^',j,#9,'=',#9,exponen(i,j));

  readln;
end.
