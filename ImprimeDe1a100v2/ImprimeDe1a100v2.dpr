//meu primeiro uso da estrutura de repetição (laço) WHILE
program ImprimeDe1a100v2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  i:=1;
  while i<=100 do begin
    writeln(i);
    i:=i+1;
  end;

  readln;
end.
 