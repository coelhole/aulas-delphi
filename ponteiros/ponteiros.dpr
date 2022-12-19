{
  Um ponteiro � um tipo de vari�vel
  destinado a guardar um endere�o de mem�ria.

  Toda vari�vel, seja l� qual for o seu tipo,
  ocupa um ESPA�O na mem�ria do computador
  e tem um ENDERE�O de mem�ria associado.

  O ENDERE�O de uma vari�vel � o n�mero do PRIMEIRO BYTE
  de um bloco de mem�ria reservado para guardar um valor
  (de um determinado tipo).

  Dizemos que um ponteiro que guarda o endere�o de uma vari�vel
  APONTA para o LOCAL daquela vari�vel na mem�ria
  ou, tamb�m, para o VALOR l� armazenado.

  Exemplifiquemos com o tipo integer. Um integer, em Object Pascal, � um tipo de dado inteiro,
  com sinal, que ocupa 4 bytes em mem�ria.
  Por exemplo, se declaramos uma vari�vel meuInteiro, do tipo integer,
  e o endere�o dessa vari�vel � 0040A798, esse � o n�mero do primeiro byte
  da mem�ria a guardar a informa��o (Que informa��o? Um n�mero inteiro
  escolhido no intervalo �2147483648..2147483647).
  Note bem, o ENDERE�O � o n�mero do PRIMEIRO BYTE. O ESPA�O ocupado em mem�ria,
  para guardar o valor da vari�vel meuInteiro, s�o os bytes 0040A798, 0040A799, 0040A800 e 0040A801,
  isto �, n�o apenas o byte 0040A798, mas tamb�m os tr�s bytes seguintes (lembre-se: um integer ocupa 4 bytes em mem�ria!)

  Um vari�vel do tipo Int64, por sua vez, ocupa 8 bytes e, al�m do byte do endere�o, isto �, do primeiro byte,
  ocuparia tamb�m os sete bytes seguintes. Assim, se 0040A798 fosse o endere�o de uma vari�vel meuInt64, do tipo int64,
  o espa�o em mem�ria ocupado pela vari�vel meuInt64 seria composto pelos bytes
  0040A798, 0040A799, 0040A800, 0040A801, 0040A802, 0040A803, 0040A804 e 0040A805.

  Portanto, independentemente do tipo de vari�vel associado a um ponteiro, o ponteiro guarda apenas o n�mero do primeiro byte.
  Pelo tipo de vari�vel associado ao ponteiro, isto �, se o ponteiro referencia um integer, um int64, um double etc., sabemos
  quantos bytes bem como os n�meros dos bytes vizinhos que guardam a informa��o, isto �, o valor apontado.

  A mem�ria como um todo pode ser concebida como um enorme array de bytes.
  Computadores de 32 bits (processador com arquitetura de 32 bits) endere�am no m�ximo 4 GB de mem�ria RAM.
  1 KB = 1024 bytes.
  1 MB = 1024 KB = 1024 x 1024 bytes = 1.048.576 bytes
  1 GB = 1024 MB = 1024 x 1024 x 1024 bytes = 1.073.741.824 bytes
  4 GB = 4 x 1.073.741.824 = 4.294.967.296 bytes
  Portanto, num computador com 4 GB de RAM, podemos conceber a mem�ria como um array de bytes
  com o primeiro �ndice sendo igual a 0 e o �ltimo igual a 4.294.967.295.
  Um �ndice desse array � um endere�o de mem�ria, ou seja, um valor que pode ser guardado em um ponteiro.
  Sim, ponteiros, isto �, vari�veis do tipo ponteiro, ocupam 4 bytes (4 x 8 = 32 bits) de mem�ria.
  (2^32 = 4.294.967.296)
}
program ponteiros;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  int1,int2:integer;//duas vari�veis integer
  pint:^integer;//um ponteiro para um integer (o operador ^, quando anteposto a um tipo, serve para declarar um ponteiro para aquele tipo)

begin
  writeln('Nenhum valor foi atribuido ao ponteiro pint...');
  writeln('Endereco de memoria guardado no ponteiro pint: ',integer(pint));//usamos o casting para for�ar o valor do ponteiro como um inteiro
  writeln(format('Endereco de memoria guardado no ponteiro pint (em hexadecimal): %p',[pint]));
  writeln('Veja que, ainda que nenhum valor tenha sido atribuido a pint, ele ja contem um valor inicial!');
  writeln('Portanto, cuidado!');
  writeln('Ponteiros podem apontar para areas protegidas, i.e., areas de memoria ocupadas e bloqueadas para acesso...');
  writeln;

  pint:=nil;//O zer�simo endere�o da mem�ria, i.e., o in�cio da mem�ria, tem um literal especial para denot�-lo: o nil.
  //Para denotar que um ponteiro aponta para "lugar nenhum" da mem�ria,
  //isto �, que n�o aponta para um endere�o v�lido, atribu�mos nil a ele
  writeln('pint:=nil;');
  writeln('Endereco de memoria guardado no ponteiro pint: ',integer(pint));
  writeln(format('Endereco de memoria guardado no ponteiro pint (em hexadecimal): %p',[pint]));
  writeln;

  pint:=@int1;//o operador @ devolve o endere�o em mem�ria da vari�vel int1 que �, aqui, guardado no ponteiro pint
  writeln('pint:=@int1;');

  writeln('Endereco da variavel int1: ',integer(pint));
  writeln(format('Endereco da variavel int1 (em hexadecimal): %p',[pint]));

  writeln('Valor guardado na variavel int1: ',int1);
  writeln('Valor guardado na variavel int1: ',pint^);//o operador ^, quando posposto a uma vari�vel do tipo ponteiro,
  //serve para obter ou modificar o valor da vari�vel apontada pelo ponteiro.
  //Aqui ele � usado para obtermos o valor guardado na vari�vel apontada.
  writeln;

  int1:=3;
  writeln('int1:=3;');
  writeln('Valor guardado na variavel int1: ',int1);
  writeln('Valor guardado na variavel int1: ',pint^);
  writeln;

  int1:=855;
  writeln('int1:=855;');
  writeln('Valor guardado na variavel int1: ',int1);
  writeln('Valor guardado na variavel int1: ',pint^);
  writeln;

  pint^:=2000104765;//aqui o operador ^, posposto a uma vari�vel do tipo ponteiro, serve para atribuir um novo valor a vari�vel apontada pelo ponteiro
  writeln('pint^:=2000104765;');
  writeln('Valor guardado na variavel int1: ',int1);
  writeln('Valor guardado na variavel int1: ',pint^);
  writeln;

  pint^:=5072;
  writeln('pint^:=5072;');
  writeln('Valor guardado na variavel int1: ',int1);
  writeln('Valor guardado na variavel int1: ',pint^);
  writeln;

  int2:=432;
  writeln('int2:=432;');
  pint:=@int2;
  writeln('pint:=@int2;');
  writeln('pint agora aponta para a vari�vel int2');
  writeln('Valor guardado na variavel int2: ',int2);
  writeln('Valor guardado na variavel int2: ',pint^);
  writeln;

  pint^:=2023;
  writeln('pint^:=2023;');
  writeln('Valor guardado na variavel int2: ',int2);
  writeln('Valor guardado na variavel int2: ',pint^);
  writeln;

  int2:=2030;
  writeln('int2:=2030;');
  writeln('Valor guardado na variavel int2: ',int2);
  writeln('Valor guardado na variavel int2: ',pint^);
  writeln;

  readln;
end.
