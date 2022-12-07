program BinaryStringToByte;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function binStrToByte(const binStr:string):byte;
const
  potencia:array[0..7] of integer = (1,2,4,8,16,32,64,128);
var
  i,len:integer;
begin
  len:=length(binStr);

  if len>8 then begin
    writeln('binStrToByte: binStr nao tem um comprimento valido: comprimento > 8');
    exit;
  end;

  for i:=1 to len do
    if not(binStr[i] in ['0','1']) then begin
      writeln('caractere invalido: ',i,': ',binStr[i]);
      exit;
    end;

  result:=0;
  for i:=len downto 1 do
    if binStr[i]='1' then
      result:=result+potencia[len-i];
end;

begin
  writeln(binStrToByte('10001000'));

  readln;
end.
 