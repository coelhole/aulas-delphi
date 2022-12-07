program HelloWorld16;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12:char;
  helloMsg:string;

begin
  c1:='H';
  c2:='e';
  c3:='l';
  c4:='l';
  c5:='o';
  c6:=' ';
  c7:='W';
  c8:='o';
  c9:='r';
  c10:='l';
  c11:='d';
  c12:='!';
  helloMsg:=c1;
  helloMsg:=helloMsg+c2;
  helloMsg:=helloMsg+c3;
  helloMsg:=helloMsg+c4;
  helloMsg:=helloMsg+c5;
  helloMsg:=helloMsg+c6;
  helloMsg:=helloMsg+c7;
  helloMsg:=helloMsg+c8;
  helloMsg:=helloMsg+c9;
  helloMsg:=helloMsg+c10;
  helloMsg:=helloMsg+c11;
  helloMsg:=helloMsg+c12;
  write(helloMsg);

  readln;
end.
 