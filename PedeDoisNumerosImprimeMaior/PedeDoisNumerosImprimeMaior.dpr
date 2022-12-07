program PedeDoisNumerosImprimeMaior;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i1,i2:integer;

begin
  //se uma das entradas não for um inteiro
  //um erro será lançado pela procedure readln
  //e o programa será interrompido
  write('Entre com um inteiro: ');
  readln(i1);
  write('Entre com outro inteiro: ');
  readln(i2);
  if i1>i2 then
    writeln(i1)
  else
    writeln(i2);

  readln;
end.
 