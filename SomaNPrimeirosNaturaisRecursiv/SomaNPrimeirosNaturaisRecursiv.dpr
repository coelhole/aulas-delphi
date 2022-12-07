program SomaNPrimeirosNaturaisRecursiv;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function somaPrimeirosNaturais(const n:integer):integer;
begin
  if n<0 then begin
    writeln('somaPrimeirosNaturais: condicao n>=0 nao satisfeita');
    exit;
  end;

  if n=0 then
    result:=0
  else
    result:=n+somaPrimeirosNaturais(n-1);
end;

var
  n:integer;

begin
  writeln('n'#9#9'soma n primeiros naturais');
  for n:=0 to 100 do
    writeln(n,#9#9,somaPrimeirosNaturais(n));

  readln;
end.

