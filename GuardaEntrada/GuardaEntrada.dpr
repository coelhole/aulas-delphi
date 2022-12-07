program GuardaEntrada;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  entrada:string;

begin
  write('Escreva algo e tecle <ENTER>: ');
  readln(entrada);//lê uma linha do teclado e guarda na variável entrada
  writeln('Recebemos a entrada <',entrada,'>.');

  writeln;
  write('Tecle <ENTER> para sair...');
  readln;
end.
 