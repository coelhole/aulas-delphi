program PotenciaDe2v2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function pot2(const exp:integer):integer;
var
  n:integer;
begin
  if exp<0 then begin
    writeln('pot2: condicao exp>=0 nao observada');
    result:=0;
    exit;
  end;

  if exp=0 then
    result:=1
  else
    result:=2*pot2(exp-1);
end;

var
  n:integer;

begin
  writeln('n',#9,'2^n');
  for n:=0 to 30 do
    writeln(n,#9,pot2(n));

  readln;
end.

 