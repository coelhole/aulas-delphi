program RepeatCaracteresASCIIimprimiveisV2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  c:char;

begin
  writeln('#DEC',#9,'CHAR');
  c:='!';
  repeat
    writeln('#',integer(c),#9,c);
    inc(c);
  until c>'~';

  readln;
end.
 