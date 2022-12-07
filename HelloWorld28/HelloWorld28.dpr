program HelloWorld28;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  helloMsg:string;

begin
  helloMsg:=#72#101#108#108#111#32;
  helloMsg:=helloMsg+'World';
  helloMsg:=helloMsg+#33;
  write(helloMsg);

  readln;
end.
 