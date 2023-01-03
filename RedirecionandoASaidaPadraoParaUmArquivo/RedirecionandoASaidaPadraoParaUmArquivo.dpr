program RedirecionandoASaidaPadraoParaUmArquivo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  linha:string;

begin
  //O console é a saída padrão e, por isso,
  //ao se usar as procedures Write e WriteLn, sem passar um arquivo como parâmetro,
  //subentende-se que se quer enviar o conteúdo para a saída padrão (console).
  //Há um (uma variável de) "arquivo de texto" (TextFile) associado (a) ao console:
  //é a variável Output definida na unit System: veja que há na System a linha
  //Output: Text;           { Standard output }

  WriteLn('minha string');
  WriteLn(Output,'minha string');//a mesma coisa que a linha anterior
  //tanto a primeira chamada à WriteLn
  //quanto a segunda colocaram na tela a string 'minha string'

  //sendo Output uma variável TextFile (Text e TextFile são o mesmo tipo), que representa o Console,
  //podemos redirecionar o conteúdo ecoado pelas chamadas às procedures
  //Write e WriteLn para um arquivo, por meio de AssignFile:
  CloseFile(Output);
  AssignFile(Output,'C:\StdOut.txt');
  Append(Output);
  Writeln('teste');//a string 'teste' é enviada para o arquivo StdOut.txt
  readln(linha);
  writeln(linha);//a linha lida do teclado (entrada padrão) é também enviada para o arquivo StdOut.txt
  CloseFile(Output);

end.
 