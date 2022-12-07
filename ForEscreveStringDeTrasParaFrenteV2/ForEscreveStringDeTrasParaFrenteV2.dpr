program ForEscreveStringDeTrasParaFrenteV2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;
  i,len:integer;

begin
  minhaString:='minha string';
  len:=length(minhaString);
  for i:=1 to len do
    write(minhaString[len-i+1]);

  readln;
end.
 