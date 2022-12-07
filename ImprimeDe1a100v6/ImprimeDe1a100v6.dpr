program ImprimeDe1a100v6;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

label comeco,fim;

begin
  i:=1;
  comeco:
    if i>100 then goto fim;
    writeln(i);
    inc(i);
    goto comeco;
  fim:

  readln;
end.
