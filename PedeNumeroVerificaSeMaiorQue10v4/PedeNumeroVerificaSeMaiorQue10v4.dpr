program PedeNumeroVerificaSeMaiorQue10v4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  meuInteiro:integer;

begin
  write('Entre com um inteiro: ');
  readln(meuInteiro);

  if meuInteiro>10 then begin
    write('O inteiro fornecido ',meuInteiro);
    writeln(' eh maior do que 10');
  end else
    writeln('O inteiro fornecido ',meuInteiro,' eh menor do que ou igual a 10');

  readln;
end.
 