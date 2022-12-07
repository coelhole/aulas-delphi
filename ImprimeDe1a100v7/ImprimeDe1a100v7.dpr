program ImprimeDe1a100v7;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

procedure imprimeDe1a100;
begin
  if i <=0 then i:=1;
  if i>100 then exit;
  writeln(i);
  inc(i);
  imprimeDe1a100;
end;

begin
  imprimeDe1a100;

  readln;
end.
 