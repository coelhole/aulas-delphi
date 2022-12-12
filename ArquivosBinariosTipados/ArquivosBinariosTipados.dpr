program ArquivosBinariosTipados;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  MEU_ARQUIVO_DE_INTEIROS='C:\Users\Administrador\Desktop\aulas-delphi\aulas-de-programacao-delphi\ArquivosBinariosTipados\inteiros.dat';

var
  meuArquivoDeInteiros:file of integer;
  i,meuint:integer;

begin
  assignFile(meuArquivoDeInteiros,MEU_ARQUIVO_DE_INTEIROS);

  //escrita
  rewrite(meuArquivoDeInteiros);
  for i:=1 to 10 do begin
    meuint:=random(2000000000);
    write(meuArquivoDeInteiros,meuint);
  end;
  closeFile(meuArquivoDeInteiros);

  //leitura
  reset(meuArquivoDeInteiros);
  while not eof(meuArquivoDeInteiros) do begin
    read(meuArquivoDeInteiros,meuint);
    writeln(meuint);
  end;
  closeFile(meuArquivoDeInteiros);

  readln;
end.
 