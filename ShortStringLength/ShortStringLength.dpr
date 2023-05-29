program ShortStringLength;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhastring:shortstring;
  pminhastring:PShortString;
  pprimeirochar:PChar;
  pprimeirobyte:PByte;

begin
  minhastring:='Leonardo Coelho';
  writeln('minhastring:=''Leonardo Coelho'';');
  pminhastring:=@minhastring;
  writeln('pminhastring:=@minhastring;');
  writeln(format('Endereco na memoria da variavel minhastring: %d',[integer(pminhastring)]));
  writeln('minhastring = ',minhastring);
  writeln('pminhastring^ = ',pminhastring^);
  writeln;

  pprimeirochar:=@minhastring[1];
  writeln('pprimeirochar:=@minhastring[1];');
  writeln(format('Endereco na memoria do primeiro caractere de minhastring: %d',[integer(pprimeirochar)]));
  writeln('minhastring[1] = ',minhastring[1]);
  writeln('pprimeirochar^ = ',pprimeirochar^);
  writeln;

  writeln('Repare que o endereco do primeiro caractere minhastring[1] esta 1 byte avancado em relacao ao endereco da variavel minhastring');
  writeln('Porque o primeiro byte de uma ShortString guarda o comprimento da string!');
  writeln('Uma ShortString pode ter ate 255 caracteres: [0,255] -> 1 byte');
  writeln;

  writeln('Length(minhastring) = ',Length(minhastring));
  pprimeirobyte:=@minhastring;
  writeln('pprimeirobyte:=@minhastring;');
  writeln('pprimeirobyte^ = ',pprimeirobyte^);
  writeln;

  minhastring:='Uma outra string, com um outro tamanho';
  writeln('minhastring:=''Uma outra string, com um outro tamanho'';');
  writeln('Length(minhastring) = ',Length(minhastring));
  writeln('pprimeirobyte^ = ',pprimeirobyte^);

  minhastring:='mudando mais uma vez a string guardada em minhastring';
  writeln('minhastring:=''mudando mais uma vez a string guardada em minhastring'';');
  writeln('Length(minhastring) = ',Length(minhastring));
  writeln('pprimeirobyte^ = ',pprimeirobyte^);

  readln;
end.
