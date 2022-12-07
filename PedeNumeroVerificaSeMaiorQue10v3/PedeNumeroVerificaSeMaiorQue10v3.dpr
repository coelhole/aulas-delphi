program PedeNumeroVerificaSeMaiorQue10v3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  meuInteiro:integer;

begin
  write('Entre com um inteiro: ');
  readln(meuInteiro);

  if meuInteiro>10 then
    writeln(meuInteiro,' > 10')
  else
    writeln(meuInteiro,' <= 10');

  readln;
end.
 