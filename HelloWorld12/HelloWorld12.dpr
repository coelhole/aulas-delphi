{
  Este programa mostra que uma string pode ser acessada posi��o a posi��o
  (isto �, caractere por caractere) por um inteiro (�ndice),
  iniciado em 1, que determina a posi��o (caractere) que est� sendo acessada(o).
}

program HelloWorld12;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  helloMsg:string;

begin
  helloMsg:='Hello World!';
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
 