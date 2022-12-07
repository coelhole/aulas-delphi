program ImprimeDe1a100v8;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure imprimeAte100(i:integer);
begin
  writeln(i);
  inc(i);
  if i>100 then exit;
  imprimeAte100(i);
end;

begin
  imprimeAte100(1);

  readln;
end.
