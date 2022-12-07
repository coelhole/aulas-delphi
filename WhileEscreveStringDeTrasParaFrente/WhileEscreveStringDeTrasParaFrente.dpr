program WhileEscreveStringDeTrasParaFrente;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;
  i:integer;

begin
  minhaString:='minha string';
  i:=length(minhaString);
  while i>=1 do begin
    write(minhaString[i]);
    dec(i);
  end;

  readln;
end.
 