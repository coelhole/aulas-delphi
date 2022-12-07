//meu primeiro uso da estrutura de repetição (laço) FOR
program ImprimeDe1a100;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  for i:=1 to 100 do
    writeln(i);

  readln;
end.
 