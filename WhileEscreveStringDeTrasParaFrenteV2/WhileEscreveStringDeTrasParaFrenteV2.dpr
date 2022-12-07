program WhileEscreveStringDeTrasParaFrenteV2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;
  i,len:integer;

begin
  minhaString:='minha string';
  len:=length(minhaString);
  i:=1;
  while i<=len do begin
    write(minhaString[len-i+1]);
    inc(i);
  end;

  readln;
end.
