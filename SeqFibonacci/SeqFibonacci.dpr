{
  function fibonacci(const n:integer):integer calcula o n-ésimo termo da sequência de Fibonacci.
  OBS.: Use a função apenas para n pequeno!
}
program SeqFibonacci;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function fibonacci(const n:integer):integer;
begin
  if n<1 then begin
    writeln('fibonacci: n invalido: ',n,': <1');
    exit;
  end;

  if (n=1) or (n=2) then
    result:=1
  else
    result:=fibonacci(n-1)+fibonacci(n-2);
end;

var
  n:integer;

begin
  for n:=1 to 40 do
    writeln('F',n,#9,'=',#9,fibonacci(n));

  readln;
end.
 