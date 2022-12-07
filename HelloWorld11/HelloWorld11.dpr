{
  Este programa mostra um fato notável da linguagem (Object) Pascal:
  todo identificador (que se atribua a variáveis, constantes, procedures, funções etc.)
  é case-insensitive, isto é, indiferente à caixa alta (maiúscula) ou baixa (minúscula).
  hellomsg, Hellomsg, helloMsg, HelloMsg, HeLlOmSg, hElLoMsG, HELLOMSG
  são todos identificadores equivalentes e representam, no caso deste programa,
  uma mesma variável.

  Este pequeno texto, entre chaves, é um COMENTÁRIO DE BLOCO! E é IGNORADO pelo compilador!
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
 