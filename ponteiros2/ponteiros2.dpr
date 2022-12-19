program ponteiros2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  arrayde10inteiros:array[1..10] of integer;
  i:integer;
  pint:^integer;

begin
  randomize;
  for i:=1 to 10 do
    arrayde10inteiros[i]:=random(2000000000);

  for i:=1 to 10 do
    writeln('arrayde10inteiros[',i,']',#9,'=',#9,arrayde10inteiros[i]);
  writeln;

  pint:=@arrayde10inteiros;//guarda no ponteiro pint o endere�o de mem�ria em que est� o array arrayde10inteiros
  writeln('pint:=@arrayde10inteiros;');
  writeln('Endereco em memoria de arrayde10inteiros: ',integer(pint));
  writeln(format('Endereco em memoria de arrayde10inteiros (em hexadecimal): %p',[pint]));
  writeln;

  for i:=1 to 10 do begin
    pint:=@arrayde10inteiros[i];
    writeln('pint:=@arrayde10inteiros[',i,'];');
    writeln('Endereco em memoria de arrayde10inteiros[',i,']: ',integer(pint));
    writeln(format('Endereco em memoria de arrayde10inteiros[%d] (em hexadecimal): %p',[i,pint]));
    writeln('arrayde10inteiros[',i,']',#9,'=',#9,pint^);
    writeln;
    inc(pint);
  end;
  //observe que
  //(1) o endere�o do primeiro inteiro do array, isto �, @arrayde10inteiros[1]
  //� exatamente o endere�o do array, isto �,
  //@arrayde10inteiros[1] = @arrayde10inteiros (s�o iguais!)
  //(2) o endere�o de cada inteiro do array � o endere�o do inteiro anterior + 4
  //isto �, @arrayde10inteiros[i+1] = @arrayde10inteiros[i] + 4 para i=1,...,9
  //(realmente, um inteiro ocupa 4 bytes de mem�ria!)

  readln;
end.
 