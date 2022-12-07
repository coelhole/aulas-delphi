{
  Implemente uma função que, dado um número inteiro n, calcule o fatorial de n (n!) usando uma estrutura de repetição.
  n! = n*(n-1)*(n-2)*(n-3)*...*2*1
}
program FatorialIter;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function fat(const n:integer):integer;
var
  i:integer;
begin
  if n<0 then begin
    writeln('erro: condicao n >= 0 nao satisfeita');
    exit;
  end;

  result:=1;

  for i:=n downto 2 do
    result:=i*result;
end;

var
  n:integer;

begin
  for n:=0 to 15 do
    writeln(n,'!',#9,'=',#9,fat(n));

  readln;
end.
 