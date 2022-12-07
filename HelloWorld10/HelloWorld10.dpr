program HelloWorld10;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  helloWorldP1,helloWorldP2,helloWorldP3,helloWorldP4:string;

begin
  helloWorldP1:='Hello';
  helloWorldP2:=' ';
  helloWorldP3:='World';
  helloWorldP4:='!';
  writeln(helloWorldP1,helloWorldP2,helloWorldP3,helloWorldP4);

  readln;
end.
 