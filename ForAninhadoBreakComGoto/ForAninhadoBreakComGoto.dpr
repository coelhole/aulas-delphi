program ForAninhadoBreakComGoto;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i,j:integer;

label
  foraDoLaco;

begin

  for i:=1 to 50 do begin
    writeln('i: ',i);
    for j:=1 to 30 do begin
      writeln('j: ',j);
      if i=20 then goto foraDoLaco;
    end;
  end;
  foraDoLaco:

readln;

end.
 