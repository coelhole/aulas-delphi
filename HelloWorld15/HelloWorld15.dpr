program HelloWorld15;

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
  helloMsg:=c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12;
  write(helloMsg);

  readln;
end.
 