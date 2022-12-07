program ArquivoDeTextoEscrita;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  meuArquivoDeTexto:textfile;

begin
   assignFile(meuArquivoDeTexto,'C:\meuarquivodetexto.txt');
   rewrite(meuArquivoDeTexto);//abre o arquivo para escrita (modo sobrescrever)
   write(meuArquivoDeTexto,'linha 1');
   write(meuArquivoDeTexto,'ainda estamos na linha 1');
   writeln(meuArquivoDeTexto);//aqui mudamos para a segunda linha
   writeln(meuArquivoDeTexto,'linha 2');
   writeln(meuArquivoDeTexto,'linha 3');
   writeln(meuArquivoDeTexto,'linha 4');
   closeFile(meuArquivoDeTexto);

   readln;
end.
 