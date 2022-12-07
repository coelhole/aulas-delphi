program ImprimeDe1a100v3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  i:=1;
  while i<=100 do begin
    writeln(i);
    inc(i);
  end;

  readln;
end.
 