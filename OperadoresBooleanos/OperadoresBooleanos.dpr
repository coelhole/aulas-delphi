{
  OPERADORES BOOLEANOS:
  Operadores booleanos têm por operando(s) variáveis ou constantes booleanas e retornam um booleano.
  Se o operador recebe um operando, dizemos que se trata de um operador unário. Se recebe dois, binário.
}
program OperadoresBooleanos;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaVariavelBoolean1,minhaVariavelBoolean2:boolean;

begin
  writeln('Operador (unario) NOT: inverte o valor booleano do operando');
  writeln('not FALSE = ',not FALSE);
  writeln('not TRUE = ',not TRUE);
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  writeln('not minhaVariavelBoolean1 = ', not minhaVariavelBoolean1);
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  writeln('not minhaVariavelBoolean1 = ', not minhaVariavelBoolean1);
  if not TRUE then writeln('nada será escrito na tela: porque NOT TRUE = FALSE');
  if not FALSE then writeln('texto na tela: porque NOT FALSE = TRUE');
  minhaVariavelBoolean1 := TRUE;
  if not minhaVariavelBoolean1 then writeln('nada será escrito na tela: porque minhaVariavelBoolean1 = TRUE de modo que NOT minhaVariavelBoolean1 = FALSE');
  minhaVariavelBoolean1 := FALSE;
  if not minhaVariavelBoolean1 then writeln('texto na tela: porque minhaVariavelBoolean1 = FALSE de modo que NOT minhaVariavelBoolean1 = TRUE');


  writeln('------------------------------------------------------------------');

  writeln('Operador (binario) OR: recebe dois operandos e devolve TRUE se um deles eh TRUE e FALSE noutro caso');
  writeln('FALSE or FALSE = ',FALSE or FALSE);
  writeln('FALSE or TRUE = ',FALSE or TRUE);
  writeln('TRUE or FALSE = ',TRUE or FALSE);
  writeln('TRUE or TRUE = ',TRUE or TRUE);
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  minhaVariavelBoolean2 := FALSE;
  writeln('minhaVariavelBoolean2 := FALSE;');
  writeln('minhaVariavelBoolean1 or minhaVariavelBoolean2 = ',minhaVariavelBoolean1 or minhaVariavelBoolean2);
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  minhaVariavelBoolean2 := TRUE;
  writeln('minhaVariavelBoolean2 := TRUE;');
  writeln('minhaVariavelBoolean1 or minhaVariavelBoolean2 = ',minhaVariavelBoolean1 or minhaVariavelBoolean2);
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  minhaVariavelBoolean2 := FALSE;
  writeln('minhaVariavelBoolean2 := FALSE;');
  writeln('minhaVariavelBoolean1 or minhaVariavelBoolean2 = ',minhaVariavelBoolean1 or minhaVariavelBoolean2);
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  minhaVariavelBoolean2 := TRUE;
  writeln('minhaVariavelBoolean2 := TRUE;');
  writeln('minhaVariavelBoolean1 or minhaVariavelBoolean2 = ',minhaVariavelBoolean1 or minhaVariavelBoolean2);

  writeln('------------------------------------------------------------------');

  writeln('Operador (binario) XOR: recebe dois operandos e devolve TRUE somente se um deles eh TRUE e o outro FALSE. Noutros casos devolve FALSE');
  writeln('FALSE xor FALSE = ',FALSE xor FALSE);
  writeln('FALSE xor TRUE = ',FALSE xor TRUE);
  writeln('TRUE xor FALSE = ',TRUE xor FALSE);
  writeln('TRUE xor TRUE = ',TRUE xor TRUE);
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  minhaVariavelBoolean2 := FALSE;
  writeln('minhaVariavelBoolean2 := FALSE;');
  writeln('minhaVariavelBoolean1 xor minhaVariavelBoolean2 = ',minhaVariavelBoolean1 xor minhaVariavelBoolean2);
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  minhaVariavelBoolean2 := TRUE;
  writeln('minhaVariavelBoolean2 := TRUE;');
  writeln('minhaVariavelBoolean1 xor minhaVariavelBoolean2 = ',minhaVariavelBoolean1 xor minhaVariavelBoolean2);
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  minhaVariavelBoolean2 := FALSE;
  writeln('minhaVariavelBoolean2 := FALSE;');
  writeln('minhaVariavelBoolean1 xor minhaVariavelBoolean2 = ',minhaVariavelBoolean1 xor minhaVariavelBoolean2);
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  minhaVariavelBoolean2 := TRUE;
  writeln('minhaVariavelBoolean2 := TRUE;');
  writeln('minhaVariavelBoolean1 xor minhaVariavelBoolean2 = ',minhaVariavelBoolean1 xor minhaVariavelBoolean2);

  writeln('------------------------------------------------------------------');

  writeln('Operador (binario) AND: recebe dois operandos e devolve TRUE se ambos sao TRUE e FALSE noutro caso');
  writeln('FALSE and FALSE = ',FALSE and FALSE);
  writeln('FALSE and TRUE = ',FALSE and TRUE);
  writeln('TRUE and FALSE = ',TRUE and FALSE);
  writeln('TRUE and TRUE = ',TRUE and TRUE);
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  minhaVariavelBoolean2 := FALSE;
  writeln('minhaVariavelBoolean2 := FALSE;');
  writeln('minhaVariavelBoolean1 and minhaVariavelBoolean2 = ',minhaVariavelBoolean1 and minhaVariavelBoolean2);
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  minhaVariavelBoolean2 := TRUE;
  writeln('minhaVariavelBoolean2 := TRUE;');
  writeln('minhaVariavelBoolean1 and minhaVariavelBoolean2 = ',minhaVariavelBoolean1 and minhaVariavelBoolean2);
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  minhaVariavelBoolean2 := FALSE;
  writeln('minhaVariavelBoolean2 := FALSE;');
  writeln('minhaVariavelBoolean1 and minhaVariavelBoolean2 = ',minhaVariavelBoolean1 and minhaVariavelBoolean2);
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  minhaVariavelBoolean2 := TRUE;
  writeln('minhaVariavelBoolean2 := TRUE;');
  writeln('minhaVariavelBoolean1 and minhaVariavelBoolean2 = ',minhaVariavelBoolean1 and minhaVariavelBoolean2);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;
  writeln('NAND');
  writeln('not(FALSE and FALSE) = ',not(FALSE and FALSE));
  writeln('not(FALSE and TRUE) = ',not(FALSE and TRUE));
  writeln('not(TRUE and FALSE) = ',not(TRUE and FALSE));
  writeln('not(TRUE and TRUE) = ',not(TRUE and TRUE));
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  minhaVariavelBoolean2 := FALSE;
  writeln('minhaVariavelBoolean2 := FALSE;');
  writeln('not(minhaVariavelBoolean1 and minhaVariavelBoolean2) = ',not(minhaVariavelBoolean1 and minhaVariavelBoolean2));
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  minhaVariavelBoolean2 := TRUE;
  writeln('minhaVariavelBoolean2 := TRUE;');
  writeln('not(minhaVariavelBoolean1 and minhaVariavelBoolean2) = ',not(minhaVariavelBoolean1 and minhaVariavelBoolean2));
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  minhaVariavelBoolean2 := FALSE;
  writeln('minhaVariavelBoolean2 := FALSE;');
  writeln('not(minhaVariavelBoolean1 and minhaVariavelBoolean2) = ',not(minhaVariavelBoolean1 and minhaVariavelBoolean2));
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  minhaVariavelBoolean2 := TRUE;
  writeln('minhaVariavelBoolean2 := TRUE;');
  writeln('not(minhaVariavelBoolean1 and minhaVariavelBoolean2) = ',not(minhaVariavelBoolean1 and minhaVariavelBoolean2));


  writeln;
  writeln('------------------------------------------------------------------');
  writeln;
  writeln('XNOR');
  writeln('not(FALSE xor FALSE) = ',not(FALSE xor FALSE));
  writeln('not(FALSE xor TRUE) = ',not(FALSE xor TRUE));
  writeln('not(TRUE xor FALSE) = ',not(TRUE xor FALSE));
  writeln('not(TRUE xor TRUE) = ',not(TRUE xor TRUE));
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  minhaVariavelBoolean2 := FALSE;
  writeln('minhaVariavelBoolean2 := FALSE;');
  writeln('not(minhaVariavelBoolean1 xor minhaVariavelBoolean2) = ',not(minhaVariavelBoolean1 xor minhaVariavelBoolean2));
  minhaVariavelBoolean1 := FALSE;
  writeln('minhaVariavelBoolean1 := FALSE;');
  minhaVariavelBoolean2 := TRUE;
  writeln('minhaVariavelBoolean2 := TRUE;');
  writeln('not(minhaVariavelBoolean1 xor minhaVariavelBoolean2) = ',not(minhaVariavelBoolean1 xor minhaVariavelBoolean2));
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  minhaVariavelBoolean2 := FALSE;
  writeln('minhaVariavelBoolean2 := FALSE;');
  writeln('not(minhaVariavelBoolean1 xor minhaVariavelBoolean2) = ',not(minhaVariavelBoolean1 xor minhaVariavelBoolean2));
  minhaVariavelBoolean1 := TRUE;
  writeln('minhaVariavelBoolean1 := TRUE;');
  minhaVariavelBoolean2 := TRUE;
  writeln('minhaVariavelBoolean2 := TRUE;');
  writeln('not(minhaVariavelBoolean1 xor minhaVariavelBoolean2) = ',not(minhaVariavelBoolean1 xor minhaVariavelBoolean2));

  readln;
end.
