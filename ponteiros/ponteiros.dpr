{
  Um ponteiro é um tipo de variável
  destinado a guardar um endereço de memória.

  Toda variável, seja lá qual for o seu tipo,
  ocupa um ESPAÇO na memória do computador
  e tem um ENDEREÇO de memória associado.

  O ENDEREÇO de uma variável é o número do PRIMEIRO BYTE
  de um bloco de memória reservado para guardar um valor
  (de um determinado tipo).

  Dizemos que um ponteiro que guarda o endereço de uma variável
  APONTA para o LOCAL daquela variável na memória
  ou, também, para o VALOR lá armazenado.

  Exemplifiquemos com o tipo integer. Um integer, em Object Pascal, é um tipo de dado inteiro,
  com sinal, que ocupa 4 bytes em memória.
  Por exemplo, se declaramos uma variável meuInteiro, do tipo integer,
  e o endereço dessa variável é 0040A798, esse é o número do primeiro byte
  da memória a guardar a informação (Que informação? Um número inteiro
  escolhido no intervalo –2147483648..2147483647).
  Note bem, o ENDEREÇO é o número do PRIMEIRO BYTE. O ESPAÇO ocupado em memória,
  para guardar o valor da variável meuInteiro, são os bytes 0040A798, 0040A799, 0040A800 e 0040A801,
  isto é, não apenas o byte 0040A798, mas também os três bytes seguintes (lembre-se: um integer ocupa 4 bytes em memória!)

  Um variável do tipo Int64, por sua vez, ocupa 8 bytes e, além do byte do endereço, isto é, do primeiro byte,
  ocuparia também os sete bytes seguintes. Assim, se 0040A798 fosse o endereço de uma variável meuInt64, do tipo int64,
  o espaço em memória ocupado pela variável meuInt64 seria composto pelos bytes
  0040A798, 0040A799, 0040A800, 0040A801, 0040A802, 0040A803, 0040A804 e 0040A805.

  Portanto, independentemente do tipo de variável associado a um ponteiro, o ponteiro guarda apenas o número do primeiro byte.
  Pelo tipo de variável associado ao ponteiro, isto é, se o ponteiro referencia um integer, um int64, um double etc., sabemos
  quantos bytes bem como os números dos bytes vizinhos que guardam a informação, isto é, o valor apontado.

  A memória como um todo pode ser concebida como um enorme array de bytes.
  Computadores de 32 bits (processador com arquitetura de 32 bits) endereçam no máximo 4 GB de memória RAM.
  1 KB = 1024 bytes.
  1 MB = 1024 KB = 1024 x 1024 bytes = 1.048.576 bytes
  1 GB = 1024 MB = 1024 x 1024 x 1024 bytes = 1.073.741.824 bytes
  4 GB = 4 x 1.073.741.824 = 4.294.967.296 bytes
  Portanto, num computador com 4 GB de RAM, podemos conceber a memória como um array de bytes
  com o primeiro índice sendo igual a 0 e o último igual a 4.294.967.295.
  Um índice desse array é um endereço de memória, ou seja, um valor que pode ser guardado em um ponteiro.
  Sim, ponteiros, isto é, variáveis do tipo ponteiro, ocupam 4 bytes (4 x 8 = 32 bits) de memória.
  (2^32 = 4.294.967.296)
}
program ponteiros;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  int1,int2:integer;//duas variáveis integer
  pint:^integer;//um ponteiro para um integer (o operador ^, quando anteposto a um tipo, serve para declarar um ponteiro para aquele tipo)

begin
  writeln('Nenhum valor foi atribuido ao ponteiro pint...');
  writeln('Endereco de memoria guardado no ponteiro pint: ',integer(pint));//usamos o casting para forçar o valor do ponteiro como um inteiro
  writeln(format('Endereco de memoria guardado no ponteiro pint (em hexadecimal): %p',[pint]));
  writeln('Veja que, ainda que nenhum valor tenha sido atribuido a pint, ele ja contem um valor inicial!');
  writeln('Portanto, cuidado!');
  writeln('Ponteiros podem apontar para areas protegidas, i.e., areas de memoria ocupadas e bloqueadas para acesso...');
  writeln;

  pint:=nil;//O zerésimo endereço da memória, i.e., o início da memória, tem um literal especial para denotá-lo: o nil.
  //Para denotar que um ponteiro aponta para "lugar nenhum" da memória,
  //isto é, que não aponta para um endereço válido, atribuímos nil a ele
  writeln('pint:=nil;');
  writeln('Endereco de memoria guardado no ponteiro pint: ',integer(pint));
  writeln(format('Endereco de memoria guardado no ponteiro pint (em hexadecimal): %p',[pint]));
  writeln;

  pint:=@int1;//o operador @ devolve o endereço em memória da variável int1 que é, aqui, guardado no ponteiro pint
  writeln('pint:=@int1;');

  writeln('Endereco da variavel int1: ',integer(pint));
  writeln(format('Endereco da variavel int1 (em hexadecimal): %p',[pint]));

  writeln('Valor guardado na variavel int1: ',int1);
  writeln('Valor guardado na variavel int1: ',pint^);//o operador ^, quando posposto a uma variável do tipo ponteiro,
  //serve para obter ou modificar o valor da variável apontada pelo ponteiro.
  //Aqui ele é usado para obtermos o valor guardado na variável apontada.
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

  pint^:=2000104765;//aqui o operador ^, posposto a uma variável do tipo ponteiro, serve para atribuir um novo valor a variável apontada pelo ponteiro
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
  writeln('pint agora aponta para a variável int2');
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
