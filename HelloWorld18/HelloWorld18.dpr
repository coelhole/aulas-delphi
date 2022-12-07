program HelloWorld18;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12:char;
  helloMsg:string;

begin
  c1:=#72;
  c2:=#101;
  c3:=#108;
  c4:=#108;
  c5:=#111;
  c6:=#32;
  c7:=#87;
  c8:=#111;
  c9:=#114;
  c10:=#108;
  c11:=#100;
  c12:=#33;
  helloMsg:=c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12;
  write(helloMsg);

  readln;
end.
 