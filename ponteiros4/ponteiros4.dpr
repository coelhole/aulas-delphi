program ponteiros4;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  int1,int2:integer;
  pint1,pint2:^integer;

begin
  writeln('Endereco de memoria do ponteiro pint1: ',integer(@pint1));
  writeln(format('Endereco de memoria do ponteiro pint1 (em hexadecimal): %p',[@pint1]));
  writeln('Endereco de memoria guardado no ponteiro pint1: ',integer(pint1));
  writeln(format('Endereco de memoria guardado no ponteiro pint1 (em hexadecimal): %p',[pint1]));
  writeln;

  writeln('Endereco de memoria do ponteiro pint2: ',integer(@pint2));
  writeln(format('Endereco de memoria do ponteiro pint2 (em hexadecimal): %p',[@pint2]));
  writeln('Endereco de memoria guardado no ponteiro pint2: ',integer(pint2));
  writeln(format('Endereco de memoria guardado no ponteiro pint2 (em hexadecimal): %p',[pint2]));
  writeln;

  pint1:=@int1;
  writeln('pint1:=@int1;');
  writeln('Endereco de memoria do ponteiro pint1: ',integer(@pint1));
  writeln(format('Endereco de memoria do ponteiro pint1 (em hexadecimal): %p',[@pint1]));
  writeln('Endereco de memoria guardado no ponteiro pint1: ',integer(pint1));
  writeln(format('Endereco de memoria guardado no ponteiro pint1 (em hexadecimal): %p',[pint1]));
  writeln('int1 = ',int1);
  writeln('pint1^ = ',pint1^);
  writeln;

  pint2:=@int2;
  writeln('pint2:=@int2;');
  writeln('Endereco de memoria do ponteiro pint2: ',integer(@pint2));
  writeln(format('Endereco de memoria do ponteiro pint2 (em hexadecimal): %p',[@pint2]));
  writeln('Endereco de memoria guardado no ponteiro pint2: ',integer(pint2));
  writeln(format('Endereco de memoria guardado no ponteiro pint2 (em hexadecimal): %p',[pint2]));
  writeln('int2 = ',int2);
  writeln('pint2^ = ',pint2^);
  writeln;

  int1:=10;
  writeln('int1:=10;');
  writeln('Endereco de memoria do ponteiro pint1: ',integer(@pint1));
  writeln(format('Endereco de memoria do ponteiro pint1 (em hexadecimal): %p',[@pint1]));
  writeln('Endereco de memoria guardado no ponteiro pint1: ',integer(pint1));
  writeln(format('Endereco de memoria guardado no ponteiro pint1 (em hexadecimal): %p',[pint1]));
  writeln('int1 = ',int1);
  writeln('pint1^ = ',pint1^);//os valores int1 e pint1^ são iguais (porque pint1 aponta para int1)
  writeln;

  int2:=205;
  writeln('int2:=205;');
  writeln('Endereco de memoria do ponteiro pint2: ',integer(@pint2));
  writeln(format('Endereco de memoria do ponteiro pint2 (em hexadecimal): %p',[@pint2]));
  writeln('Endereco de memoria guardado no ponteiro pint2: ',integer(pint2));
  writeln(format('Endereco de memoria guardado no ponteiro pint2 (em hexadecimal): %p',[pint2]));
  writeln('int2 = ',int2);
  writeln('pint2^ = ',pint2^);//os valores int2 e pint2^ são iguais (porque pint2 aponta para int2)
  writeln;

  pint1^:=65;//fazer pint1^:=65 é o mesmo que fazer int1:=65 (porque pint1 aponta para int1)
  writeln('pint1^:=65;');
  writeln('Endereco de memoria do ponteiro pint1: ',integer(@pint1));
  writeln(format('Endereco de memoria do ponteiro pint1 (em hexadecimal): %p',[@pint1]));
  writeln('Endereco de memoria guardado no ponteiro pint1: ',integer(pint1));
  writeln(format('Endereco de memoria guardado no ponteiro pint1 (em hexadecimal): %p',[pint1]));
  writeln('int1 = ',int1);
  writeln('pint1^ = ',pint1^);
  writeln;

  pint2^:=480;//fazer pint2^:=480 é o mesmo que fazer int2:=480 (porque pint2 aponta para int2)
  writeln('pint2^:=480;');
  writeln('Endereco de memoria do ponteiro pint2: ',integer(@pint2));
  writeln(format('Endereco de memoria do ponteiro pint2 (em hexadecimal): %p',[@pint2]));
  writeln('Endereco de memoria guardado no ponteiro pint2: ',integer(pint2));
  writeln(format('Endereco de memoria guardado no ponteiro pint2 (em hexadecimal): %p',[pint2]));
  writeln('int2 = ',int2);
  writeln('pint2^ = ',pint2^);
  writeln;

  pint2:=pint1;//pint2 guarda, a partir de agora, o mesmo endereço de memória guardado em pint1 (isto é, aponta para o mesmo local da memória)
  writeln('pint2:=pint1;');
  writeln('Endereco de memoria guardado no ponteiro pint1: ',integer(pint1));
  writeln(format('Endereco de memoria guardado no ponteiro pint1 (em hexadecimal): %p',[pint1]));
  writeln('pint1^ = ',pint1^);
  writeln('Endereco de memoria guardado no ponteiro pint2: ',integer(pint2));
  writeln(format('Endereco de memoria guardado no ponteiro pint2 (em hexadecimal): %p',[pint2]));
  writeln('pint2^ = ',pint2^);//pint2^ coincide com pint1^ porque, agora, pint2 aponta para a mesma área de memória que pint1
  writeln;

  int1:=2030;//pint1 aponta para int1, logo, a partir de agora, pint1^ = pint2^ = 2030
  writeln('int1:=2030;');
  writeln('int1 = ',int1);
  writeln('Endereco de memoria guardado no ponteiro pint1: ',integer(pint1));
  writeln(format('Endereco de memoria guardado no ponteiro pint1 (em hexadecimal): %p',[pint1]));
  writeln('pint1^ = ',pint1^);
  writeln('Endereco de memoria guardado no ponteiro pint2: ',integer(pint2));
  writeln(format('Endereco de memoria guardado no ponteiro pint2 (em hexadecimal): %p',[pint2]));
  writeln('pint2^ = ',pint2^);
  writeln;

  int2:=22;//pint1 não aponta para int2, bem como pint2 também não (porque fizemos pint2:=pint1), de modo que nada muda: ainda pint1^ = pint2^ = 2030 
  writeln('int2:=22;');
  writeln('int2 = ',int2);
  writeln('Endereco de memoria guardado no ponteiro pint1: ',integer(pint1));
  writeln(format('Endereco de memoria guardado no ponteiro pint1 (em hexadecimal): %p',[pint1]));
  writeln('pint1^ = ',pint1^);
  writeln('Endereco de memoria guardado no ponteiro pint2: ',integer(pint2));
  writeln(format('Endereco de memoria guardado no ponteiro pint2 (em hexadecimal): %p',[pint2]));
  writeln('pint2^ = ',pint2^);
  writeln;

  pint1^:=333;
  writeln('pint1^:=333;');
  writeln('int1 = ',int1);
  writeln('Endereco de memoria guardado no ponteiro pint1: ',integer(pint1));
  writeln(format('Endereco de memoria guardado no ponteiro pint1 (em hexadecimal): %p',[pint1]));
  writeln('pint1^ = ',pint1^);
  writeln('Endereco de memoria guardado no ponteiro pint2: ',integer(pint2));
  writeln(format('Endereco de memoria guardado no ponteiro pint2 (em hexadecimal): %p',[pint2]));
  writeln('pint2^ = ',pint2^);
  writeln;

  pint2^:=2775;
  writeln('pint2^:=2775;');
  writeln('int1 = ',int1);
  writeln('Endereco de memoria guardado no ponteiro pint1: ',integer(pint1));
  writeln(format('Endereco de memoria guardado no ponteiro pint1 (em hexadecimal): %p',[pint1]));
  writeln('pint1^ = ',pint1^);
  writeln('Endereco de memoria guardado no ponteiro pint2: ',integer(pint2));
  writeln(format('Endereco de memoria guardado no ponteiro pint2 (em hexadecimal): %p',[pint2]));
  writeln('pint2^ = ',pint2^);
  writeln;

  readln;
end.
