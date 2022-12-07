{
  OPERADORES RELACIONAIS:
  Operadores relacionais (<,>,<=,>=,=,<>) têm por operando(s) variáveis ou constantes numéricas (inteiros ou reais), booleanas, de caractere, do tipo string etc. e retornam um booleano.
}
program OperadoresRelacionais;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaVariavelInteira1,minhaVariavelInteira2:integer;
  minhaVariavelReal1,minhaVariavelReal2:double;
  minhaVariavelBoolean1,minhaVariavelBoolean2:boolean;
  minhaString1,minhaString2:string;

begin
  writeln('-1<1 = ',-1<1);
  writeln('0<1 = ',0<1);
  writeln('1<1 = ',1<1);
  writeln('100<1 = ',100<1);
  writeln('1>-1 = ',1>-1);
  writeln('1>0 = ',1>0);
  writeln('1>100 = ',1>100);
  writeln('20<21 = ',20<21);
  writeln('1000<100 = ',1000<100);
  writeln('1000>100 = ',1000>100);
  writeln('1001<1000 = ',1001<1000);
  writeln('1001>1000 = ',1001>1000);
  writeln('1.01<1 = ',1.01<1);
  writeln('1.01>1 = ',1.01>1);
  writeln('1.001>1.01 = ',1.001>1.01);
  writeln('1.001<1.01 = ',1.001<1.01);
  writeln('1.0001>1.001 = ',1.0001>1.001);
  writeln('1.0001<1.001 = ',1.0001<1.001);
  writeln('3<3 = ',3<3);
  writeln('3>3 = ',3>3);
  writeln('3.1<3 = ',3.1<3);
  writeln('3.1>3 = ',3.1>3);
  writeln('3<3.1 = ',3<3.1);
  writeln('3>3.1 = ',3>3.1);
  writeln('3.14<3 = ',3.14<3);
  writeln('3.14>3 = ',3.14>3);
  writeln('3<3.14 = ',3<3.14);
  writeln('3>3.14 = ',3>3.14);
  writeln('3.141<3 = ',3.141<3);
  writeln('3.141>3 = ',3.141>3);
  writeln('3<3.141 = ',3<3.141);
  writeln('3>3.141 = ',3>3.141);
  writeln('-1<=1 = ',-1<=1);
  writeln('0<=1 = ',0<=1);
  writeln('1<=1 = ',1<=1);
  writeln('100<=1 = ',100<=1);
  writeln('1>=-1 = ',1>=-1);
  writeln('1>=0 = ',1>=0);
  writeln('1>=100 = ',1>=100);
  writeln('20<=21 = ',20<=21);
  writeln('1000<=100 = ',1000<=100);
  writeln('1000>=100 = ',1000>=100);
  writeln('1001<=1000 = ',1001<=1000);
  writeln('1001>=1000 = ',1001>=1000);
  writeln('1.01<=1 = ',1.01<=1);
  writeln('1.01>=1 = ',1.01>=1);
  writeln('1.001>=1.01 = ',1.001>=1.01);
  writeln('1.001<=1.01 = ',1.001<=1.01);
  writeln('1.0001>=1.001 = ',1.0001>=1.001);
  writeln('1.0001<=1.001 = ',1.0001<=1.001);
  writeln('3<=3 = ',3<=3);
  writeln('3>=3 = ',3>=3);
  writeln('3.1<=3 = ',3.1<=3);
  writeln('3.1>=3 = ',3.1>=3);
  writeln('3<=3.1 = ',3<=3.1);
  writeln('3>=3.1 = ',3>=3.1);
  writeln('3.14<=3 = ',3.14<=3);
  writeln('3.14>=3 = ',3.14>=3);
  writeln('3<=3.14 = ',3<=3.14);
  writeln('3>=3.14 = ',3>=3.14);
  writeln('3.141<=3 = ',3.141<=3);
  writeln('3.141>=3 = ',3.141>=3);
  writeln('3<=3.141 = ',3<=3.141);
  writeln('3>=3.141 = ',3>=3.141);
  writeln('''a''<''b'' = ','a'<'b');
  writeln('''a''>''b'' = ','a'>'b');
  writeln('''a''<=''b'' = ','a'<='b');
  writeln('''a''>=''b'' = ','a'>='b');
  writeln('''a''<''A'' = ','a'<'A');
  writeln('''a''>''A'' = ','a'>'A');
  writeln('''a''<=''A'' = ','a'<='A');
  writeln('''a''>=''A'' = ','a'>='A');
  writeln('''a''<''B'' = ','a'<'B');
  writeln('''a''>''B'' = ','a'>'B');
  writeln('''a''<=''B'' = ','a'<='B');
  writeln('''a''>=''B'' = ','a'>='B');
  writeln('''a''<''aa'' = ','a'<'aa');
  writeln('''a''>''aa'' = ','a'>'aa');
  writeln('''a''<=''aa'' = ','a'<='aa');
  writeln('''a''>=''aa'' = ','a'>='aa');
  writeln('''abacate''<''abacaxi'' = ','abacate'<'abacaxi');
  writeln('''abacate''>''abacaxi'' = ','abacate'>'abacaxi');
  writeln('''abacate''<=''abacaxi'' = ','abacate'<='abacaxi');
  writeln('''abacate''>=''abacaxi'' = ','abacate'>='abacaxi');
  writeln('''paralelo''>''paralelogramo'' = ','paralelo'>'paralelogramo');
  writeln('''paralelo''<''paralelogramo'' = ','paralelo'<'paralelogramo');
  writeln('''paralelo''>=''paralelogramo'' = ','paralelo'>='paralelogramo');
  writeln('''paralelo''<=''paralelogramo'' = ','paralelo'<='paralelogramo');


  writeln('-----------------------------------------------------------------');

  minhaVariavelInteira1:=1;
  writeln('minhaVariavelInteira1:=1;');
  minhaVariavelInteira2:=2;
  writeln('minhaVariavelInteira2:=2;');
  writeln('minhaVariavelInteira1<minhaVariavelInteira2 = ',minhaVariavelInteira1<minhaVariavelInteira2);
  writeln('minhaVariavelInteira1>minhaVariavelInteira2 = ',minhaVariavelInteira1>minhaVariavelInteira2);
  writeln('minhaVariavelInteira1<=minhaVariavelInteira2 = ',minhaVariavelInteira1<=minhaVariavelInteira2);
  writeln('minhaVariavelInteira1>=minhaVariavelInteira2 = ',minhaVariavelInteira1>=minhaVariavelInteira2);

  minhaVariavelInteira1:=2;
  writeln('minhaVariavelInteira1:=2;');
  minhaVariavelInteira2:=1;
  writeln('minhaVariavelInteira2:=1;');
  writeln('minhaVariavelInteira1<minhaVariavelInteira2 = ',minhaVariavelInteira1<minhaVariavelInteira2);
  writeln('minhaVariavelInteira1>minhaVariavelInteira2 = ',minhaVariavelInteira1>minhaVariavelInteira2);
  writeln('minhaVariavelInteira1<=minhaVariavelInteira2 = ',minhaVariavelInteira1<=minhaVariavelInteira2);
  writeln('minhaVariavelInteira1>=minhaVariavelInteira2 = ',minhaVariavelInteira1>=minhaVariavelInteira2);

  minhaVariavelInteira1:=1;
  writeln('minhaVariavelInteira1:=1;');
  minhaVariavelInteira2:=1;
  writeln('minhaVariavelInteira2:=1;');
  writeln('minhaVariavelInteira1<minhaVariavelInteira2 = ',minhaVariavelInteira1<minhaVariavelInteira2);
  writeln('minhaVariavelInteira1>minhaVariavelInteira2 = ',minhaVariavelInteira1>minhaVariavelInteira2);
  writeln('minhaVariavelInteira1<=minhaVariavelInteira2 = ',minhaVariavelInteira1<=minhaVariavelInteira2);
  writeln('minhaVariavelInteira1>=minhaVariavelInteira2 = ',minhaVariavelInteira1>=minhaVariavelInteira2);

  minhaVariavelReal1:=3.141;
  writeln('minhaVariavelReal1:=3.141;');
  minhaVariavelReal2:=3.14;
  writeln('minhaVariavelReal2:=3.14;');
  writeln('minhaVariavelReal1<minhaVariavelReal2 = ',minhaVariavelReal1<minhaVariavelReal2);
  writeln('minhaVariavelReal1>minhaVariavelReal2 = ',minhaVariavelReal1>minhaVariavelReal2);
  writeln('minhaVariavelReal1<=minhaVariavelReal2 = ',minhaVariavelReal1<=minhaVariavelReal2);
  writeln('minhaVariavelReal1>=minhaVariavelReal2 = ',minhaVariavelReal1>=minhaVariavelReal2);

  minhaVariavelReal1:=3.14;
  writeln('minhaVariavelReal1:=3.14;');
  minhaVariavelReal2:=3.14;
  writeln('minhaVariavelReal2:=3.14;');
  writeln('minhaVariavelReal1<minhaVariavelReal2 = ',minhaVariavelReal1<minhaVariavelReal2);
  writeln('minhaVariavelReal1>minhaVariavelReal2 = ',minhaVariavelReal1>minhaVariavelReal2);
  writeln('minhaVariavelReal1<=minhaVariavelReal2 = ',minhaVariavelReal1<=minhaVariavelReal2);
  writeln('minhaVariavelReal1>=minhaVariavelReal2 = ',minhaVariavelReal1>=minhaVariavelReal2);

  minhaString1:='abcd';
  writeln('minhaString1:=''abcd'';');
  minhaString2:='abcd';
  writeln('minhaString2:=''abcd'';');
  writeln('minhaString1<minhastring2 = ',minhaString1<minhaString2);
  writeln('minhaString1<=minhastring2 = ',minhaString1<=minhaString2);
  writeln('minhaString1>inhastring2 = ',minhaString1>minhaString2);
  writeln('minhaString1>=nhastring2 = ',minhaString1>=minhaString2);


  minhaString1:='abcd';
  writeln('minhaString1:=''abcd'';');
  minhaString2:='abcdario';
  writeln('minhaString2:=''abcdario'';');
  writeln('minhaString1<minhastring2 = ',minhaString1<minhaString2);
  writeln('minhaString1<=minhastring2 = ',minhaString1<=minhaString2);
  writeln('minhaString1>minhastring2 = ',minhaString1>minhaString2);
  writeln('minhaString1>=minhastring2 = ',minhaString1>=minhaString2);


  readln;
end.
