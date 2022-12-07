program MultiplicacaoPor2usandoShiftToLeft;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i,m:integer;

begin
  for i:=1 to 100 do begin
    m:=random(high(integer) div 2 + 1);
    writeln(m,' shl 1 -> ',m shl 1);
    writeln('2*',m,' -> ',2*m);
    writeln;
  end;

  readln;
end.
 