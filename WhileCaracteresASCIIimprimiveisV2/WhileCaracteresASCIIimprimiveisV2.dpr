program WhileCaracteresASCIIimprimiveisV2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  c:char;

begin
  writeln('#DEC',#9,'CHAR');
  c:='!';
  while c<='~' do begin
    writeln('#',integer(c),#9,c);
    inc(c);
  end;

  readln;
end.
 