program ContinueForExemplo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  for i:=1 to 100 do begin
    writeln('-----------------------------------');

    if i=50 then continue;

    writeln(i);

    if i=40 then continue;

    writeln(i*i);
  end;

  readln;
end.
