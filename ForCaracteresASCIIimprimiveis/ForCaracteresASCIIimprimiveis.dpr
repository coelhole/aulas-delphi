program ForCaracteresASCIIimprimiveis;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  writeln('#DEC',#9,'CHAR');
  for i:=33 to 126 do
    writeln('#',i,#9,chr(i));

  readln;
end.
 