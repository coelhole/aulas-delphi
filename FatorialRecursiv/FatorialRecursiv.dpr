{
  Implemente uma função que, dado um número inteiro n, calcule o fatorial de n (n!) usando recursão.
  n!=n*(n-1)!
  0!=1
}
program FatorialRecursiv;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function fat(const n:integer):integer;
begin
  if n<0 then begin
    writeln('erro: condicao n >= 0 nao satisfeita');
    exit;
  end;

  if n=0 then
    result:=1
  else
    result:=n*fat(n-1);
end;

var
  n:integer;

begin
  for n:=0 to 15 do
    writeln(n,'!',#9,'=',#9,fat(n));

  readln;
end.

