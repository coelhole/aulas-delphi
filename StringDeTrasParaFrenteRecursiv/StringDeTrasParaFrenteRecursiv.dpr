program StringDeTrasParaFrenteRecursiv;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function stringDeTrasParaFrente(minhaString:string):string;
begin
  if length(minhaString)<2 then
    result:=minhaString
  else begin
    result:=minhaString[length(minhaString)];
    setLength(minhaString,length(minhaString)-1);
    result:=result+stringDeTrasParaFrente(minhaString);
  end;
end;

begin
  writeln(stringDeTrasParaFrente('Leonardo Helder Coelho'));
  writeln(stringDeTrasParaFrente('minha string'));

  readln;
end.
 