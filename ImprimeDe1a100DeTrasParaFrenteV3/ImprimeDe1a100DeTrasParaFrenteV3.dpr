program ImprimeDe1a100DeTrasParaFrenteV3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  i:=100;
  while i>=1 do begin
    writeln(i);
    dec(i);
  end;

  readln;
end.
 