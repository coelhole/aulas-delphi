program RedirecionandoASaidaPadraoParaUmArquivo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  linha:string;

begin
  //O console � a sa�da padr�o e, por isso,
  //ao se usar as procedures Write e WriteLn, sem passar um arquivo como par�metro,
  //subentende-se que se quer enviar o conte�do para a sa�da padr�o (console).
  //H� um (uma vari�vel de) "arquivo de texto" (TextFile) associado (a) ao console:
  //� a vari�vel Output definida na unit System: veja que h� na System a linha
  //Output: Text;           { Standard output }

  WriteLn('minha string');
  WriteLn(Output,'minha string');//a mesma coisa que a linha anterior
  //tanto a primeira chamada � WriteLn
  //quanto a segunda colocaram na tela a string 'minha string'

  //sendo Output uma vari�vel TextFile (Text e TextFile s�o o mesmo tipo), que representa o Console,
  //podemos redirecionar o conte�do ecoado pelas chamadas �s procedures
  //Write e WriteLn para um arquivo, por meio de AssignFile:
  CloseFile(Output);
  AssignFile(Output,'C:\StdOut.txt');
  Append(Output);
  Writeln('teste');//a string 'teste' � enviada para o arquivo StdOut.txt
  readln(linha);
  writeln(linha);//a linha lida do teclado (entrada padr�o) � tamb�m enviada para o arquivo StdOut.txt
  CloseFile(Output);

end.
 