program ExitExemplo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

procedure teste;
begin
  writeln('escreve');

  exit;

  writeln('nao escreve');
end;

procedure teste2;
begin
  for i:=1 to 100 do begin
    writeln(i);
    if i=50 then exit;
  end;
  writeln('fim teste2');
end;

begin
  teste;

  teste2;

  readln;
end.
 