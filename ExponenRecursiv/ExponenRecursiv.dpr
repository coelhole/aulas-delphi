{
  Implemente uma função recursiva que, dados dois números inteiros x e n, calcula o valor de x^n.
}
program ExponenRecursiv;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function exponen(const base, expoen:integer):integer;
begin
  if (base<=0) or (expoen<0) then begin
    writeln('erro: condicao base > 0 e expoen >= 0 nao satisfeita');
    exit;
  end;

  if expoen=0 then
    result:=1
  else
    result:=base*exponen(base,expoen-1);
end;

var
  i,j:integer;

begin
  for i:=1 to 8 do
    for j:=0 to 10 do
      writeln(i,'^',j,#9,'=',#9,exponen(i,j));

  readln;
end.
