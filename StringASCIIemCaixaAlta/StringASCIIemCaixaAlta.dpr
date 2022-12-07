program StringASCIIemCaixaAlta;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function caixaAlta(const minhaStringASCII:string):string;
var
  i:integer;
begin
  result:=minhaStringASCII;
  for i:=1 to length(minhaStringASCII) do
    if (minhaStringASCII[i]>='a') and (minhaStringASCII[i]<='z') then
      result[i]:=chr(ord(minhaStringASCII[i])-32);
end;

begin
  writeln(caixaAlta('Leonardo Coelho'));

  readln;
end.
 