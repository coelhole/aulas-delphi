program ImprimeDe1a100v5;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  i:=1;
  repeat
    writeln(i);
    inc(i);
  until i>100;

  readln;
end.
 