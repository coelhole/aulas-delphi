program ProjetoUnits;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  MinhaPrimeiraUnit in 'MinhaPrimeiraUnit.pas',
  MinhaSegundaUnit in 'MinhaSegundaUnit.pas';

var
  meunaipe:naipe;

begin
  //helloworld;
  {
  writeln(revstring('minha string'));
  writeln(PI);
  writeln(minhavariavel);
  minhavariavel:='agora sim';
  writeln(minhavariavel);
  minhavariavel:='mudei';
  writeln(minhavariavel);


  meunaipe:=copas;

  writeln(ord(meunaipe));

  meunaipe:=paus;

  writeln(ord(meunaipe));

  writeln;
  writeln;

  //writeln('MINHA_CONSTANTE = ',MINHA_CONSTANTE);

  escreveNaTelaMinhaConstante;

  escreveNaTelaUmaMensagem;

  revhelloworld;
}

  //writeln('minha variavel = ',minhavariavel);

  escreveValorMinhaVariavel;

  readln;
end.
