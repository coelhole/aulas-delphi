program ImprimeDe1a100DeTrasParaFrente;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  for i:=100 downto 1 do
    writeln(i);

  readln;
end.
 