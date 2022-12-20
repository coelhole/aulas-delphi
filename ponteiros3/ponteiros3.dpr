//análogo de ponteiros2 para array dinâmico
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

  pint:=@arraydeinteiros;//guarda no ponteiro pint o endereço de memória em que está o array arraydeinteiros
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
  //(1) o endereço do primeiro inteiro do array, isto é, @arraydeinteiros[0]
  //não coincide com o endereço do array, isto é,
  //@arraydeinteiros[0] <> @arraydeinteiros (são diferentes!)
  //(um comportamento distinto do observado para arrays estáticos!)  
  //(2) o endereço de cada inteiro do array é o endereço do inteiro anterior + 4
  //isto é, @arraydeinteiros[i+1] = @arraydeinteiros[i] + 4 para i=0,...,8
  //(realmente, um inteiro ocupa 4 bytes de memória!)

  readln;
end.

