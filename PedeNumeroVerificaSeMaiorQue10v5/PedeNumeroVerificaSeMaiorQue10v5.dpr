program PedeNumeroVerificaSeMaiorQue10v5;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  entrada:string;
  meuInteiro:integer;

begin
  write('Entre com um inteiro: ');
  readln(entrada);

  meuInteiro:=strToInt(entrada);
  //a função strToInt, declarada na unit SysUtils, recebe uma string e a coverte para um inteiro (integer)
  //se a string passada para strToInt não for convertível para um inteiro, um erro é lançado
  //(e, se a aplicação console está correndo dentro de uma janela, a janela é fechada)

  if meuInteiro>10 then
    writeln(meuInteiro,' > 10')
  else
    writeln(meuInteiro,' <= 10');

  readln;
end.
 