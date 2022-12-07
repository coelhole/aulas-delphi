program ImprimeNPrimeirosNaturaisOrdemDecrescenteRecursiv;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure imprimeOrdemDecrescente(const n:integer);
begin
  if n=0 then exit;

  writeln(n);

  imprimeOrdemDecrescente(n-1);
end;

begin
  imprimeOrdemDecrescente(5);

  writeln('------------------------------------------------------------------');

  imprimeOrdemDecrescente(10);

  writeln('------------------------------------------------------------------');

  imprimeOrdemDecrescente(15);

  writeln('------------------------------------------------------------------');

  imprimeOrdemDecrescente(20);

  writeln('------------------------------------------------------------------');

  imprimeOrdemDecrescente(25);

  readln;
end.
 