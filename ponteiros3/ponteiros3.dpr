//an�logo de ponteiros2 para array din�mico
program ponteiros3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  arraydeinteiros:array of integer;
  i:integer;
  pint:^integer;

begin
  randomize;
  for i:=0 to 9 do begin
    setLength(arraydeinteiros,length(arraydeinteiros)+1);
    arraydeinteiros[i]:=random(2000000000);
  end;

  for i:=0 to 9 do
    writeln('arraydeinteiros[',i,']',#9,'=',#9,arraydeinteiros[i]);
  writeln;

  pint:=@arraydeinteiros;//guarda no ponteiro pint o endere�o de mem�ria em que est� o array arraydeinteiros
  writeln('pint:=@arraydeinteiros;');
  writeln('Endereco em memoria de arraydeinteiros: ',integer(pint));
  writeln(format('Endereco em memoria de arraydeinteiros (em hexadecimal): %p',[pint]));
  writeln;

  for i:=0 to 9 do begin
    pint:=@arraydeinteiros[i];
    writeln('pint:=@arraydeinteiros[',i,'];');
    writeln('Endereco em memoria de arraydeinteiros[',i,']: ',integer(pint));
    writeln(format('Endereco em memoria de arraydeinteiros[%d] (em hexadecimal): %p',[i,pint]));
    writeln('arraydeinteiros[',i,']',#9,'=',#9,pint^);
    writeln;
    inc(pint);
  end;
  //observe que
  //(1) o endere�o do primeiro inteiro do array, isto �, @arraydeinteiros[0]
  //n�o coincide com o endere�o do array, isto �,
  //@arraydeinteiros[0] <> @arraydeinteiros (s�o diferentes!)
  //(um comportamento distinto do observado para arrays est�ticos!)  
  //(2) o endere�o de cada inteiro do array � o endere�o do inteiro anterior + 4
  //isto �, @arraydeinteiros[i+1] = @arraydeinteiros[i] + 4 para i=0,...,8
  //(realmente, um inteiro ocupa 4 bytes de mem�ria!)

  readln;
end.

