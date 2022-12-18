program LeituraDeArquivoDeTexto;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  CAMINHO_ARQUIVO='C:\meuarquivodetexto.txt';

var
  txtfile:textfile;
  linha:string;

begin
  assignFile(txtfile,CAMINHO_ARQUIVO);
  reset(txtfile);//abre o arquivo para leitura
  while not eof(txtfile) do begin
    readln(txtfile,linha);
    writeln(linha);
  end;
  closeFile(txtfile);
  readln;
end.
 