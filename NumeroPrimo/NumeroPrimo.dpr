program NumeroPrimo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function primo(const meuInteiro:byte):boolean;
var
  n:integer;
begin
  result:=true;

  for n:=2 to meuInteiro div 2 do
    if meuInteiro mod n = 0 then begin
      result:=false;
      break;
    end;

  if (meuInteiro=0) or (meuInteiro=1) then result:=false;
end;

var
  n:integer;

begin
  for n:=1 to 200 do
    if primo(n) then writeln(n);

  readln;
end.
 