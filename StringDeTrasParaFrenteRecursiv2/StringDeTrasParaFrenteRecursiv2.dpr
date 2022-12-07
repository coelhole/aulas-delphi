program StringDeTrasParaFrenteRecursiv2; //Araújo version

{$APPTYPE CONSOLE}

uses
  SysUtils;

function stringDeTrasParaFrente(minhaString:string):string;
var
  novoPrimeiro,novoUltimo:char;
  len:integer;
begin
  len:=length(minhaString);
  if len<=1 then begin
    result:=minhaString;
    exit;
  end;
  novoPrimeiro:=minhaString[len];
  novoUltimo:=minhaString[1];
  delete(minhaString,len,1);
  delete(minhaString,1,1);
  result:=novoPrimeiro+stringDeTrasParaFrente(minhaString)+novoUltimo;
end;

begin
  writeln(stringDeTrasParaFrente('minha string'));
  writeln(stringDeTrasParaFrente('Leonardo Helder Coelho'));
  writeln(stringDeTrasParaFrente('ave'));
  writeln(stringDeTrasParaFrente('fato'));  
  readln;
end.
 