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
  //a fun��o strToInt, declarada na unit SysUtils, recebe uma string e a coverte para um inteiro (integer)
  //se a string passada para strToInt n�o for convert�vel para um inteiro, um erro � lan�ado
  //(e, se a aplica��o console est� correndo dentro de uma janela, a janela � fechada)

  if meuInteiro>10 then
    writeln(meuInteiro,' > 10')
  else
    writeln(meuInteiro,' <= 10');

  readln;
end.
 