program ImprimeDe1a100DeTrasParaFrenteV2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  i:=100;
  while i>=1 do begin
    writeln(i);
    i:=i-1;
  end;

  readln;
end.
 