{
  Este programa mostra um fato not�vel da linguagem (Object) Pascal:
  todo identificador (que se atribua a vari�veis, constantes, procedures, fun��es etc.)
  � case-insensitive, isto �, indiferente � caixa alta (mai�scula) ou baixa (min�scula).
  hellomsg, Hellomsg, helloMsg, HelloMsg, HeLlOmSg, hElLoMsG, HELLOMSG
  s�o todos identificadores equivalentes e representam, no caso deste programa,
  uma mesma vari�vel.

  Este pequeno texto, entre chaves, � um COMENT�RIO DE BLOCO! E � IGNORADO pelo compilador!
}

program HelloWorld11;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  helloMsg:string;

begin
  helloMsg:='Hello World!';
  writeln(hellomsg);
  writeln(Hellomsg);
  writeln(helloMsg);
  writeln(HelloMsg);
  writeln(HeLlOmSg);
  writeln(hElLoMsG);
  writeln(HELLOMSG);

  readln;
end.
 