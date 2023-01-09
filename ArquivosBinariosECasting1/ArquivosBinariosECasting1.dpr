program ArquivosBinariosECasting1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  ARQUIVO_CIDADES='C:\cidades.dat';

type
  cidade=string[40];

var
  txtcidades:file of cidade;
  arrayCidades:array of cidade;

  bytefile:file of byte;
  meubyte:byte;
  bytescidade:array[0..sizeOf(cidade)-1] of byte;

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

  AssignFile(bytefile,ARQUIVO_CIDADES);
  reset(bytefile);
  i:=0;
  while not eof(bytefile) do begin
    read(bytefile,meubyte);
    bytescidade[i]:=meubyte;
    inc(i);

    if i=sizeOf(cidade) then begin
      i:=Length(arrayCidades)+1;
      SetLength(arrayCidades,i);
      arrayCidades[i-1]:=cidade(bytescidade);
      i:=0;
    end;
  end;
  CloseFile(bytefile);

  for i:=0 to Length(arrayCidades)-1 do
    writeln(arrayCidades[i]);

  writeln('Tecle <ENTER> para sair...');
  readln;
end.
