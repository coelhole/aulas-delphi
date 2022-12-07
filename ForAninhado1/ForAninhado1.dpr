program ForAninhado1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i,j:integer;

begin
  for i:=1 to 50 do begin
    for j:=1 to i do
      write('|>');
    writeln;
  end;

  readln;
end.
 