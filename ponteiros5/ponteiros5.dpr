program ponteiros5;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  intptr=^integer;

var
  int1,int2:integer;//minhas variáveis integer
  pint:intptr;//ponteiro para variável integer
  ppint:^intptr;//ponteiro para ponteiro para variável integer

begin
  pint:=@int1;//agora pint aponta para int1
  writeln('pint:=@int1;');
  ppint:=@pint;//agora ppint aponta para pint
  writeln('ppint:=@pint;');
  writeln;

  ppint^^:=43;//fazer ppint^^:=43 ou pint^:=43 ou int1:=43 são três maneiras de alterar o valor da variável int1 para 43
  writeln('ppint^^:=43;');
  writeln('ppint^^ = ',ppint^^);
  writeln('pint^ = ',pint^);
  writeln('int1 = ',int1);
  writeln;

  pint^:=95;
  writeln('pint^:=95;');
  writeln('ppint^^ = ',ppint^^);
  writeln('pint^ = ',pint^);
  writeln('int1 = ',int1);
  writeln;

  int1:=100;
  writeln('int1:=100;');
  writeln('ppint^^ = ',ppint^^);
  writeln('pint^ = ',pint^);
  writeln('int1 = ',int1);
  writeln;

  int2:=500;
  writeln('int2:=500;');
  pint:=@int2;//agora pint aponta para int2
  writeln('pint:=@int2;');
  writeln('ppint^^ = ',ppint^^);
  writeln('pint^ = ',pint^);
  writeln('int1 = ',int1);
  writeln('int2 = ',int2);
  writeln;

  readln;
end.
