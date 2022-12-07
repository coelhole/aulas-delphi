program ForEscreveStringDeTrasParaFrente;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;
  i:integer;

begin
  minhaString:='minha string';
  for i:=length(minhaString) downto 1 do
    write(minhaString[i]);

  readln;
end.
 