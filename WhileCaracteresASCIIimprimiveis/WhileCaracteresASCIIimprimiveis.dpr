program WhileCaracteresASCIIimprimiveis;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  writeln('#DEC',#9,'CHAR');
  i:=33;
  while i<=126 do begin
    writeln('#',i,#9,chr(i));
    inc(i);
  end;

  readln;
end.
 