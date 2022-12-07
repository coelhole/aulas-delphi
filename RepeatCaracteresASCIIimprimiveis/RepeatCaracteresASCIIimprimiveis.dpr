program RepeatCaracteresASCIIimprimiveis;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  writeln('#DEC',#9,'CHAR');
  i:=33;
  repeat
    writeln('#',i,#9,chr(i));
    inc(i);
  until i>126;

  readln;
end.
 