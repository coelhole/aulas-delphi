program HelloWorld5;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;

begin
  minhaString:='Hello'+' '+'World!';
  write(minhaString);

  readln;
end.
 