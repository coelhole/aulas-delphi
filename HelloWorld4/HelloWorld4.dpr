program HelloWorld4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;//Minha primeira vari�vel (do tipo string) declarada. Isto, que est� escrito ap�s //, � um coment�rio de linha (porque termina ao final desta linha) e � ignorado pelo compilador! 

begin
  minhaString:='Hello World!';
  write(minhaString);

  readln;
end.
 