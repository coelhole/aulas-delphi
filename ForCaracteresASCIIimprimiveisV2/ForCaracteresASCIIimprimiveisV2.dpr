program ForCaracteresASCIIimprimiveisV2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  c:char;

begin
  writeln('#DEC',#9,'CHAR');
  for c:='!' to '~' do
    writeln('#',integer(c),#9,c);

  readln;
end.
