{
  function fibonacci(const n:integer):integer calcula o n-ésimo termo da sequência de Fibonacci.
}
program SeqFibonacciIter;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function fibonacci(const n:integer):integer;
var
  i,t,n_1,n_2:integer;
begin
  if n<1 then begin
    writeln('fibonacci: n invalido: ',n,': <1');
    exit;
  end;

  n_1:=1;
  n_2:=1;

  if (n=1) or (n=2) then
    result:=1
  else begin
    for i:=3 to n-1 do begin
      t:=n_1;
      n_1:=n_1+n_2;
      n_2:=t;
    end;
    result:=n_1+n_2;
  end;
end;

var
  n:integer;

begin
  for n:=1 to 40 do
    writeln('F',n,#9,'=',#9,fibonacci(n));

  readln;
end.
 