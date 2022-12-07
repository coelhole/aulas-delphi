program HelloWorld6;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;

begin
  minhaString:='Hello';
  minhaString:=minhaString+' ';
  minhaString:=minhaString+'World!';
  write(minhaString);

  readln;
end.
 