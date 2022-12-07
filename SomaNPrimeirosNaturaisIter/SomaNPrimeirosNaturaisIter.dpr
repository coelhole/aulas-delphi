program SomaNPrimeirosNaturaisIter;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function somaPrimeirosNaturais(const n:integer):integer;
var
  i:integer;
begin
  if n<0 then begin
    writeln('somaPrimeirosNaturais: condicao n>=0 nao satisfeita');
    exit;
  end;

  result:=0;
  for i:=1 to n do
    result:=result+i;
end;

var
  n:integer;

begin
  writeln('n'#9#9'soma n primeiros naturais');
  for n:=0 to 100 do
    writeln(n,#9#9,somaPrimeirosNaturais(n));

  readln;
end.
