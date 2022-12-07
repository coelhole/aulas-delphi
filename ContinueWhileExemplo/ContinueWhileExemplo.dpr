program ContinueWhileExemplo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  i:=0;
  while i<=100 do begin
    inc(i);
    writeln('-----------------------------------');

    if i=50 then continue;

    writeln(i);

    if i=40 then continue;

    writeln(i*i);
  end;

  readln;
end.
