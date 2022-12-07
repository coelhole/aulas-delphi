program PotenciaDe2v4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function pot2(const exp:integer):integer;
begin
  if exp<0 then begin
    writeln('pot2: condicao exp>=0 nao observada');
    result:=0;
    exit;
  end;

  result:=1 shl exp;
end;

var
  n:integer;

begin
  writeln('n',#9,'2^n');
  for n:=0 to 30 do
    writeln(n,#9,pot2(n));

  readln;
end.

 