program RepeatEscreveStringDeTrasParaFrenteV2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;
  i,len:integer;

begin
  minhaString:='minha string';
  len:=length(minhaString);
  i:=0;
  repeat
    write(minhaString[len-i]);
    inc(i);
  until i=len;

  readln;
end.
 