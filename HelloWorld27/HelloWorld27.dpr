program HelloWorld27;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  helloMsg:string;

begin
  helloMsg:=#72#101#108#108#111#32+'World'+#33;
  write(helloMsg);

  readln;
end.
 