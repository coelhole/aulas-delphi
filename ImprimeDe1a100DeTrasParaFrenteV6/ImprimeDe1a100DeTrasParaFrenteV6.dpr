program ImprimeDe1a100DeTrasParaFrenteV6;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  i:integer;

label comeco, fim;

begin
  i:=100;
  comeco:
    if i<1 then goto fim;
    writeln(i);
    dec(i);
    goto comeco;
  fim:

  readln;
end.

