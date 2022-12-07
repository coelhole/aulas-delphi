program PedeDoisNumerosImprimeMaior2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  entrada1,entrada2:string;

begin
  write('Entre com um inteiro: ');
  readln(entrada1);
  write('Entre com outro inteiro: ');
  readln(entrada2);

  //se uma das entradas não for convertível para um inteiro
  //um erro de conversão será lançado pela função strToInt
  //e o programa será interrompido
  if strToInt(entrada1)>strToInt(entrada2) then
    writeln(entrada1)
  else
    writeln(entrada2);

  readln;
end.
