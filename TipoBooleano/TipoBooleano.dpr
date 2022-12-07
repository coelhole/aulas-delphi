program TipoBooleano;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaVariavelBoolean:boolean;

begin
  writeln(minhaVariavelBoolean);

  writeln('------------------------------------------------------------------');

  minhaVariavelBoolean:=true;
  writeln('minhaVariavelBoolean=',minhaVariavelBoolean);
  minhaVariavelBoolean:=false;
  writeln('minhaVariavelBoolean=',minhaVariavelBoolean);

  writeln('------------------------------------------------------------------');  

  writeln('-----------PRIMEIRO TESTE-----------');
  minhaVariavelBoolean:=true;
  if minhaVariavelBoolean then writeln('minhaVariavelBoolean=true');

  writeln('-----------SEGUNDO TESTE-----------');
  minhaVariavelBoolean:=false;
  if minhaVariavelBoolean then writeln('minhaVariavelBoolean is true');

  writeln('-----------TERCEIRO TESTE-----------');
  minhaVariavelBoolean:=false;
  if minhaVariavelBoolean=false then writeln('minhaVariavelBoolean is false');

  writeln('------------------------------------------------------------------');

  writeln('low(boolean)=',low(boolean));
  writeln('high(boolean)=',high(boolean));

  writeln('------------------------------------------------------------------');

  writeln('ord(false)=',ord(false));
  writeln('ord(true)=',ord(true));

  readln;
end.
