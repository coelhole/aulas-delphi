program ArrayEstaticoDeCaracteresParaString;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  chararr:array[1..5] of char;
  str:string;

begin
  chararr[1]:='c';
  chararr[2]:='a';
  chararr[3]:='r';
  chararr[4]:='r';
  chararr[5]:='o';

  str:=chararr;
  write(str);

  readln;
end.
 