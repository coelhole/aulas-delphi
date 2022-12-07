program HelloWorld29;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  helloMsg:string;

begin
  helloMsg:=#72#101#108#108#111#32;
  helloMsg:=helloMsg+'World';
  helloMsg:=helloMsg+#33;
  write(helloMsg[1]);
  write(helloMsg[2]);
  write(helloMsg[3]);
  write(helloMsg[4]);
  write(helloMsg[5]);
  write(helloMsg[6]);
  write(helloMsg[7]);
  write(helloMsg[8]);
  write(helloMsg[9]);
  write(helloMsg[10]);
  write(helloMsg[11]);
  write(helloMsg[12]);  

  readln;
end.
 