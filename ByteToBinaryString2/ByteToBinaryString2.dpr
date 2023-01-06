program ByteToBinaryString2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function byteToBinStr(const b:byte):string;
begin
  result:=format('%d%d%d%d%d%d%d%d',[
    b shr 7,
    (b and 64) shr 6,
    (b and 32) shr 5,
    (b and 16) shr 4,
    (b and 8) shr 3,
    (b and 4) shr 2,
    (b and 2) shr 1,
    b and 1
  ]);
end;

var
  b:integer;

begin
  writeln('DEC',#9,'BIN');
  for b:=0 to 255 do
    writeln(b,#9,byteToBinStr(b));

  readln;
end.
 