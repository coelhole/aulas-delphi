program PedeNumeroVerificaSeMaiorQue10v2;

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
  end;

  readln;
end.
 