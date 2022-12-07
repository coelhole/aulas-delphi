program ContinueRepeatExemplo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  i:=0;
  repeat
    inc(i);
    writeln('-----------------------------------');

    if i=50 then continue;

    writeln(i);

    if i=40 then continue;

    writeln(i*i);
  until i>=100;

  readln;
end.
