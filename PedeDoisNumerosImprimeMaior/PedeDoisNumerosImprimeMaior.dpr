program PedeDoisNumerosImprimeMaior;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i1,i2:integer;

begin
  //se uma das entradas n�o for um inteiro
  //um erro ser� lan�ado pela procedure readln
  //e o programa ser� interrompido
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
 