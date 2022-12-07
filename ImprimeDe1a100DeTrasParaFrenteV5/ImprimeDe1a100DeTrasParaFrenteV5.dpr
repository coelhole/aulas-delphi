program ImprimeDe1a100DeTrasParaFrenteV5;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  i:=100;
  repeat
    writeln(i);
    dec(i);
  until i<1;

  readln;
end.
 