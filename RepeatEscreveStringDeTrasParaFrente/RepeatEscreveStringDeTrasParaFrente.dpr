program RepeatEscreveStringDeTrasParaFrente;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;
  i:integer;

begin
  minhaString:='minha string';
  i:=length(minhaString);
  repeat
    write(minhaString[i]);
    dec(i);
  until i<1;

  readln;
end.
 