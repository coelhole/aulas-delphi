program HelloWorld4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;//Minha primeira variável (do tipo string) declarada. Isto, que está escrito após //, é um comentário de linha (porque termina ao final desta linha) e é ignorado pelo compilador! 

begin
  minhaString:='Hello World!';
  write(minhaString);

  readln;
end.
 