program PedeNumeroVerificaSeMaiorQue10;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  meuInteiro:integer;//minha primeira declaração de variável do tipo inteiro

begin
  write('Entre com um inteiro: ');
  readln(meuInteiro);//se não for fornecido um inteiro, ocorrerá um erro (e, se o console estiver a correr dentro de uma janela, a janela será fechada)

  if meuInteiro>10 then
    writeln(meuInteiro,' > 10');

  readln;
end.
 