program RepeatAninhado1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i,j:integer;

begin
  i:=1;
  repeat
    j:=1;
    repeat
      write('|>');
      inc(j);
    until j>i;
    writeln;
    inc(i);
  until i>50;

  readln;
end.

 