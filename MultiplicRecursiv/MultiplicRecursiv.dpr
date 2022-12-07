//algoritmo recursivo para a multiplicacao
//efetua a multiplicacao de dois inteiros como somas sucessivas
//m*n = (m-1)*n + n = ((m-2)*n + n) + n = (((m-3)*n + n) + n) + n = ...  
program MultiplicRecursiv;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function multiplicacao(const m,n:integer):integer;
begin
  if m=1 then
    result:=n
  else
    result:=n+multiplicacao(m-1,n);
end;

var
  m,n:integer;

begin
  for m:=1 to 100 do
    for n:=1 to 100 do
      writeln('multiplicacao(',m,',',n,') -> ',multiplicacao(m,n));

  readln;
end.
 