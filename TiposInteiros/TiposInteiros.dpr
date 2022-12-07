program TiposInteiros;

{$APPTYPE CONSOLE}

uses
  SysUtils;

//TABELA DE TIPOS INTEIROS

{
  NOME          LIMITE INFERIOR     LIMITE SUPERIOR     TAMANHO       SINAL?
  --------------------------------------------------------------------------
  Integer       �2147483648         2147483647          32 bits       sim
  Cardinal      0                   4294967295          32 bits       n�o
  Shortint      �128                127                 8 bits        sim
  Smallint      �32768              32767               16 bits       sim
  Longint       �2147483648         2147483647          32 bits       sim
  Int64         �2^63               2^63�1              64 bits       sim
  Byte          0                   255                 8 bits        n�o
  Word          0                   65535               16 bits       n�o
  Longword      0                   4294967295          32 bits       n�o
}

var
  minhaVariavelInteger:integer;
  minhaVariavelCardinal:cardinal;
  minhaVariavelShortint:shortint;
  minhaVariavelSmallint:smallint;
  minhaVariavelLongint:longint;
  minhaVariavelInt64:int64;
  minhaVariavelByte:byte;
  minhaVariavelWord:word;
  minhaVariavelLongword:longword;

begin
  writeln(minhaVariavelInteger,' (INTEGER)');
  writeln(minhaVariavelCardinal,' (CARDINAL)');
  writeln(minhaVariavelShortint,' (SHORTINT)');
  writeln(minhaVariavelSmallint,' (SMALLINT)');
  writeln(minhaVariavelLongint,' (LONGINT)');
  writeln(minhaVariavelInt64,' (INT64)');
  writeln(minhaVariavelByte,' (BYTE)');
  writeln(minhaVariavelWord,' (WORD)');
  writeln(minhaVariavelLongword,' (LONGWORD)');
  writeln('---------------------------------');
  writeln;



  writeln('low(integer)=',low(integer));
  writeln('high(integer)=',high(integer));
  writeln('low(cardinal)=',low(cardinal));
  writeln('high(cardinal)=',high(cardinal));
  writeln('low(shortint)=',low(shortint));
  writeln('high(shortint)=',high(shortint));
  writeln('low(smallint)=',low(smallint));
  writeln('high(smallint)=',high(smallint));
  writeln('low(longint)=',low(longint));
  writeln('high(longint)=',high(longint));
  writeln('low(int64)=',low(int64));
  writeln('high(int64)=',high(int64));
  writeln('low(byte)=',low(byte));
  writeln('high(byte)=',high(byte));
  writeln('low(word)=',low(word));
  writeln('high(word)=',high(word));
  writeln('low(longword)=',low(longword));
  writeln('high(longword)=',high(longword));
  writeln;


  writeln('---------------------------------');
  writeln;


  writeln('TIPO Integer');
  writeln('INTERVALO: ',low(integer),'..',high(integer));
  writeln('TAMANHO (bytes): ',sizeOf(integer));
  writeln('TAMANHO (bits): ',sizeOf(integer)*8);
  writeln('SINAL: ',low(integer)<0);
  writeln;

  writeln('TIPO Cardinal');
  writeln('INTERVALO: ',low(cardinal),'..',high(cardinal));
  writeln('TAMANHO (bytes): ',sizeOf(cardinal));
  writeln('TAMANHO (bits): ',sizeOf(cardinal)*8);
  writeln('SINAL: ',low(cardinal)<0);
  writeln;

  writeln('TIPO Shortint');
  writeln('INTERVALO: ',low(shortint),'..',high(shortint));
  writeln('TAMANHO (bytes): ',sizeOf(shortint));
  writeln('TAMANHO (bits): ',sizeOf(shortint)*8);
  writeln('SINAL: ',low(shortint)<0);
  writeln;

  writeln('TIPO Smallint');
  writeln('INTERVALO: ',low(smallint),'..',high(smallint));
  writeln('TAMANHO (bytes): ',sizeOf(smallint));
  writeln('TAMANHO (bits): ',sizeOf(smallint)*8);
  writeln('SINAL: ',low(smallint)<0);
  writeln;

  writeln('TIPO Longint');
  writeln('INTERVALO: ',low(longint),'..',high(longint));
  writeln('TAMANHO (bytes): ',sizeOf(longint));
  writeln('TAMANHO (bits): ',sizeOf(longint)*8);
  writeln('SINAL: ',low(longint)<0);
  writeln;

  writeln('TIPO Int64');
  writeln('INTERVALO: ',low(int64),'..',high(int64));
  writeln('TAMANHO (bytes): ',sizeOf(int64));
  writeln('TAMANHO (bits): ',sizeOf(int64)*8);
  writeln('SINAL: ',low(int64)<0);
  writeln;

  writeln('TIPO Byte');
  writeln('INTERVALO: ',low(byte),'..',high(byte));
  writeln('TAMANHO (bytes): ',sizeOf(byte));
  writeln('TAMANHO (bits): ',sizeOf(byte)*8);
  writeln('SINAL: ',low(byte)<0);
  writeln;

  writeln('TIPO Word');
  writeln('INTERVALO: ',low(word),'..',high(word));
  writeln('TAMANHO (bytes): ',sizeOf(word));
  writeln('TAMANHO (bits): ',sizeOf(word)*8);
  writeln('SINAL: ',low(word)<0);
  writeln;

  writeln('TIPO Longword');
  writeln('INTERVALO: ',low(longword),'..',high(longword));
  writeln('TAMANHO (bytes): ',sizeOf(longword));
  writeln('TAMANHO (bits): ',sizeOf(longword)*8);
  writeln('SINAL: ',low(longword)<0);
  writeln;



  writeln('------ var INTEGER -------');

  minhaVariavelInteger:=-2147483647;
  writeln(minhaVariavelInteger);
  writeln;

  //minhaVariavelInteger:=-2147483648;//n�o compila! descomente a linha (i.e., remova as barras // do in�cio da linha) para ver qual mensagem o compilador informa

  minhaVariavelInteger:=(-1)*2147483648;
  writeln(minhaVariavelInteger);
  writeln;

  minhaVariavelInteger:=2147483647;
  writeln(minhaVariavelInteger);
  writeln;

  minhaVariavelInteger:=2147483648;//que n�mero ser� impresso no console?
  writeln(minhaVariavelInteger);
  writeln;

  minhaVariavelInteger:=2147483649;//que n�mero ser� impresso no console?
  writeln(minhaVariavelInteger);
  writeln;



  writeln('------ var CARDINAL -------');

  //minhaVariavelCardinal:=-1;//n�o compila!

  minhaVariavelCardinal:=0;
  writeln(minhaVariavelCardinal);
  writeln;

  minhaVariavelCardinal:=4294967295;
  writeln(minhaVariavelCardinal);
  writeln;

  //minhaVariavelCardinal:=4294967296;//n�o compila!



  writeln('------ var SHORTINT -------');

  //minhaVariavelShortint:=-129;//n�o compila!

  minhaVariavelShortint:=-128;
  writeln(minhaVariavelShortint);
  writeln;

  minhaVariavelShortint:=127;
  writeln(minhaVariavelShortint);
  writeln;

  //minhaVariavelShortint:=128;//n�o compila!



  writeln('------ var SMALLINT -------');

  //minhaVariavelSmallint:=-32769;//n�o compila!

  minhaVariavelSmallint:=-32768;
  writeln(minhaVariavelSmallint);
  writeln;

  minhaVariavelSmallint:=32767;
  writeln(minhaVariavelSmallint);
  writeln;

  //minhaVariavelSmallint:=32768;//n�o compila!



  writeln('------ var LONGINT -------');

  //minhaVariavelLongint:=-2147483649;//n�o compila!

  //minhaVariavelLongint:=-2147483648;//n�o compila!

  minhaVariavelLongint:=(-1)*2147483648;
  writeln(minhaVariavelLongint);
  writeln;

  minhaVariavelLongint:=2147483647;
  writeln(minhaVariavelLongint);
  writeln;

  minhaVariavelLongint:=2147483648;
  writeln(minhaVariavelLongint);//que n�mero � impresso no console?
  writeln;

  minhaVariavelLongint:=2147483649;
  writeln(minhaVariavelLongint);//que n�mero � impresso no console?
  writeln;



  writeln('------ var INT64 -------');

  //minhaVariavelInt64:=-9223372036854775808;//n�o compila!

  minhaVariavelInt64:=-9223372036854775807;
  writeln(minhaVariavelInt64);
  writeln;

  minhaVariavelInt64:=9223372036854775807;
  writeln(minhaVariavelInt64);
  writeln;

  //minhaVariavelInt64:=9223372036854775808;//n�o compila!



  writeln('------ var BYTE -------');

  //minhaVariavelByte:=-1;//n�o compila!

  minhaVariavelByte:=0;
  writeln(minhaVariavelByte);
  writeln;

  minhaVariavelByte:=255;
  writeln(minhaVariavelByte);
  writeln;

  //minhaVariavelByte:=256;//n�o compila!



  writeln('------ var WORD -------');

  //minhaVariavelWord:=-1;//n�o compila!

  minhaVariavelWord:=0;
  writeln(minhaVariavelWord);
  writeln;

  minhaVariavelWord:=65535;
  writeln(minhaVariavelWord);
  writeln;

  //minhaVariavelWord:=65536;//n�o compila!



  writeln('------ var LONGWORD -------');

  //minhaVariavelLongword:=-1;//n�o compila!

  minhaVariavelLongword:=0;
  writeln(minhaVariavelLongword);
  writeln;

  minhaVariavelLongword:=4294967295;
  writeln(minhaVariavelLongword);
  writeln;

  //minhaVariavelLongword:=4294967296;//n�o compila!




  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  writeln('BYTE recebe SHORTINT');

  minhaVariavelShortint:=-128;
  minhaVariavelByte:=minhaVariavelShortint;
  writeln(minhaVariavelByte);
  minhaVariavelShortint:=-127;
  minhaVariavelByte:=minhaVariavelShortint;
  writeln(minhaVariavelByte);
  minhaVariavelShortint:=0;
  minhaVariavelByte:=minhaVariavelShortint;
  writeln(minhaVariavelByte);
  minhaVariavelShortint:=127;
  minhaVariavelByte:=minhaVariavelShortint;
  writeln(minhaVariavelByte);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;




  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  writeln('SHORTINT recebe BYTE');

  minhaVariavelByte:=0;
  minhaVariavelShortint:=minhaVariavelByte;
  writeln(minhaVariavelShortint);
  minhaVariavelByte:=127;
  minhaVariavelShortint:=minhaVariavelByte;
  writeln(minhaVariavelShortint);
  minhaVariavelByte:=128;
  minhaVariavelShortint:=minhaVariavelByte;
  writeln(minhaVariavelShortint);
  minhaVariavelByte:=129;
  minhaVariavelShortint:=minhaVariavelByte;
  writeln(minhaVariavelShortint);
  minhaVariavelByte:=255;
  minhaVariavelShortint:=minhaVariavelByte;
  writeln(minhaVariavelShortint);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //teste o feito acima, para BYTE e SHORTINT, para os outros tipos

  readln;
end.
