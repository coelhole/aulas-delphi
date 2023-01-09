program ArquivosBinariosECasting2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  ARQUIVO_CIDADES='C:\cidades.dat';

type
  cidade=string[40];//sizeOf(cidade)=41 (1 byte para guardar o comprimento da string + 40 bytes para guardar caracteres)
  bytes41=array[0..40] of byte;//0..40 -> 41 bytes, o tamanho do tipo cidade

var
  txtcidades:file of cidade;
  arrayCidades:array of cidade;

  cidadesbinfile:file of bytes41;
  cidadebin:bytes41;

  i:integer;

begin
  AssignFile(txtcidades,ARQUIVO_CIDADES);
  rewrite(txtcidades);
  write(txtcidades,cidade('Sarandi'));
  write(txtcidades,cidade('Londrina'));
  write(txtcidades,cidade('Terra Roxa'));
  write(txtcidades,cidade('Cruzeiro do Oeste'));
  write(txtcidades,cidade('Umuarama'));
  CloseFile(txtcidades);

  AssignFile(cidadesbinfile,ARQUIVO_CIDADES);
  reset(cidadesbinfile);
  while not eof(cidadesbinfile) do begin
    read(cidadesbinfile,cidadebin);
    setLength(arrayCidades,length(arrayCidades)+1);
    arrayCidades[length(arrayCidades)-1]:=cidade(cidadebin);
  end;
  CloseFile(cidadesbinfile);

  for i:=0 to Length(arrayCidades)-1 do
    writeln(arrayCidades[i]);

  writeln('Tecle <ENTER> para sair...');
  readln;
end.
 