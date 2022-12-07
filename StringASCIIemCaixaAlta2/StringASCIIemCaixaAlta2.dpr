program StringASCIIemCaixaAlta2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function caixaAlta(const minhaStringASCII:string):string;
const
  chars:array[97..122] of char = ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
var
  i:integer;
begin
  result:=minhaStringASCII;
  for i:=1 to length(minhaStringASCII) do
    if (minhaStringASCII[i]>='a') and (minhaStringASCII[i]<='z') then
      result[i]:=chars[ord(minhaStringASCII[i])];
end;

begin
  writeln(caixaAlta('Leonardo Coelho'));

  readln;
end.

 