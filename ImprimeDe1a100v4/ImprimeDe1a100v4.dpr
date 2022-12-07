//meu primeiro uso da estrutura de repetição (laço) REPEAT
program ImprimeDe1a100v4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

begin
  i:=1;
  repeat
    writeln(i);
    i:=i+1;
  until i>100;

  readln;
end.
 