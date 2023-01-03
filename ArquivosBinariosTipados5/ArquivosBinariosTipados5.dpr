//exemplo de edição de um arquivo binário tipado
program ArquivosBinariosTipados5;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  cidade=string[40];

var
  txtcidades:file of cidade;
  minhacidade:cidade;

begin
  AssignFile(txtcidades,'C:\cidades.dat');
  rewrite(txtcidades);
  write(txtcidades,cidade('Sarandi'));
  write(txtcidades,cidade('Londrina'));
  write(txtcidades,cidade('Terra Roxa'));
  write(txtcidades,cidade('Cruzeiro do Oeste'));
  write(txtcidades,cidade('Umuarama'));
  CloseFile(txtcidades);

  reset(txtcidades);
  while not eof(txtcidades) do begin
    read(txtcidades,minhacidade);
    writeln(minhacidade);
  end;

  writeln;

  seek(txtcidades,1);
  write(txtcidades,cidade('Toledo'));//altera 'Londrina' para 'Toledo'

  seek(txtcidades,0);
  while not eof(txtcidades) do begin
    read(txtcidades,minhacidade);
    writeln(minhacidade);
  end;
  CloseFile(txtcidades);

  writeln;
  writeln('Tecle <ENTER> para sair...');
  readln;
end.
 