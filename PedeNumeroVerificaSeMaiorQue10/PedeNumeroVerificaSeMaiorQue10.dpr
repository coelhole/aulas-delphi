program PedeNumeroVerificaSeMaiorQue10;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  meuInteiro:integer;//minha primeira declara��o de vari�vel do tipo inteiro

begin
  write('Entre com um inteiro: ');
  readln(meuInteiro);//se n�o for fornecido um inteiro, ocorrer� um erro (e, se o console estiver a correr dentro de uma janela, a janela ser� fechada)

  if meuInteiro>10 then
    writeln(meuInteiro,' > 10');

  readln;
end.
 