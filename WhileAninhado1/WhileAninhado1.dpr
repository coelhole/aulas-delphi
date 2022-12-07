program WhileAninhado1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i,j:integer;

begin
  i:=1;
  while i<=50 do begin
    j:=1;
    while j<=i do begin
      write('|>');
      inc(j);
    end;
    writeln;
    inc(i);
  end;

  readln;
end.
 