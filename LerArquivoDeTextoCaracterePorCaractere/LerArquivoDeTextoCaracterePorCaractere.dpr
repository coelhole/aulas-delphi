program LerArquivoDeTextoCaracterePorCaractere;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  MEU_ARQUIVO='C:\Users\Administrador\Desktop\aulas-delphi\aulas-de-programacao-delphi\LerArquivoDeTextoCaracterePorCaractere\meuarquivodetexto.txt';

var
  txtfile:textfile;
  c:char;

begin
  assign(txtfile,MEU_ARQUIVO);
  reset(txtfile);
  while not eof(txtfile) do begin
    read(txtfile,c);
    write(c);
  end;
  closefile(txtfile);
  readln;
end.
 