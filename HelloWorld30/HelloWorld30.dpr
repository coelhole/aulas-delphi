program HelloWorld30;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  helloMsg:string;

begin
  helloMsg:=#72#101#108#108#111#32;
  helloMsg:=helloMsg+'World';
  helloMsg:=helloMsg+#33;
  write(helloMsg[1],helloMsg[2],helloMsg[3],helloMsg[4],helloMsg[5],helloMsg[6],helloMsg[7],helloMsg[8],helloMsg[9],helloMsg[10],helloMsg[11],helloMsg[12]);

  readln;
end.
 