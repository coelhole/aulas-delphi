program ImprimeDe1a100DeTrasParaFrenteV4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  i:=100;
  repeat
    writeln(i);
    i:=i-1;
  until i<1;

  readln;
end.
 