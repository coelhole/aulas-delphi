program ponteiros7;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  nome=record
    primeiroNome,
    ultimoNome
      :string;
  end;

var
  meunome:nome;
  pstr:PString;//(o tipo PString está declarado na unit System)

begin
  meunome.primeiroNome:='Leonardo';
  writeln('meunome.primeiroNome:=''Leonardo'';');
  meunome.ultimoNome:='Coelho';
  writeln('meunome.ultimoNome:=''Coelho'';');
  writeln;

  writeln('@meunome = ',integer(@meunome));
  writeln('em hexadecimal: @meunome = ',format('%p',[@meunome]));
  writeln;

  pstr:=@meunome.primeiroNome;
  writeln('pstr:=@meunome.primeiroNome;');
  writeln('pstr = ',integer(pstr));
  writeln('em hexadecimal: pstr = ',format('%p',[pstr]));
  writeln;
  //um ponteiro para um registro é, na verdade,
  //um ponteiro para o primeiro campo do registro
  //(não importa o tipo do primeiro campo)

  writeln('writeln(PString(@meunome)^);');
  writeln(PString(@meunome)^);
  writeln;

  writeln('writeln(PString(@meunome.primeiroNome)^);');
  writeln(PString(@meunome.primeiroNome)^);
  writeln;

  writeln('writeln(pstr^);');
  writeln(pstr^);
  writeln;

  readln;
end.
 