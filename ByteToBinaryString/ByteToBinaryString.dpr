program ByteToBinaryString;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function byteToBinStr(const b:byte):string;
  function zeroum(const b:byte):char;
  begin
    if b=0 then result:='0' else result:='1';
  end;
const
  potencia:array[0..7] of byte = (1,2,4,8,16,32,64,128);
begin
  result:=zeroum(b and potencia[0]);
  result:=zeroum(b and potencia[1])+result;
  result:=zeroum(b and potencia[2])+result;
  result:=zeroum(b and potencia[3])+result;
  result:=zeroum(b and potencia[4])+result;
  result:=zeroum(b and potencia[5])+result;
  result:=zeroum(b and potencia[6])+result;
  result:=zeroum(b and potencia[7])+result;
end;

var
  b:integer;

begin
  writeln('DEC',#9,'BIN');
  for b:=0 to 255 do
    writeln(b,#9,byteToBinStr(b));

  readln;
end.
 