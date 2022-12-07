program TiposReais;

{$APPTYPE CONSOLE}

uses
  SysUtils;

//TABELA DE TIPOS REAIS

{
  NOME          LIMITE INFERIOR         LIMITE SUPERIOR         DÍGITOS       TAMANHO
  -------------------------------------------------------------------------------------
  Real48        2.9 x 10^–39             1.7 x 10^38            11–12         6 bytes
  Single        1.5 x 10^–45             3.4 x 10^38            7–8           4 bytes
  Double        5.0 x 10^–324            1.7 x 10^308           15–16         8 bytes
  Extended      3.6 x 10^–4951           1.1 x 10^4932          19–20         10 bytes
  Comp          –2^63+1                 2^63–1                  19–20         8 bytes
  Currency      –922337203685477.5808   922337203685477.5807    19–20         8 bytes
  Real          5.0 x 10^–324           1.7 x 10^308            15-16         8 bytes
}

var
  minhaVariavelDoTipoReal48:real48;
  minhaVariavelDoTipoSingle:single;
  minhaVariavelDoTipoDouble:double;
  minhaVariavelDoTipoExtended:extended;
  minhaVariavelDoTipoComp:comp;
  minhaVariavelDoTipoCurrency:currency;
  minhaVariavelDoTipoReal:real;

begin
  writeln(minhaVariavelDoTipoReal48,' (REAL48)');
  writeln(minhaVariavelDoTipoSingle,' (SINGLE)');
  writeln(minhaVariavelDoTipoDouble,' (DOUBLE)');
  writeln(minhaVariavelDoTipoExtended,' (EXTENDED)');
  writeln(minhaVariavelDoTipoComp,' (COMP)');
  writeln(minhaVariavelDoTipoCurrency,' (CURRENCY)');
  writeln(minhaVariavelDoTipoReal,' (REAL)');
  writeln('---------------------------------');
  writeln;

  readln;
end.
