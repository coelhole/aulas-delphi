program OcorrenciasCaractere;

{$APPTYPE CONSOLE}

uses
  SysUtils;

//devolve o número de ocorrências
//do char meuChar na string minhaString
function ocorrenciasChar(const minhaString:string; const meuChar:char):integer;
var
  i:integer;
begin
  result:=0;
  for i:=1 to length(minhaString) do
    if minhaString[i]=meuChar then
      inc(result);
end;

begin
  writeln('ocorrenciasChar(''minha string'',''n'') ==> ',ocorrenciasChar('minha string','n'));
  writeln('ocorrenciasChar(''minha string'',''z'') ==> ',ocorrenciasChar('minha string','z'));
  writeln('ocorrenciasChar(''minha string'',''m'') ==> ',ocorrenciasChar('minha string','m'));
  writeln('ocorrenciasChar(''minha string'',''a'') ==> ',ocorrenciasChar('minha string','a'));
  writeln('ocorrenciasChar(''minha string'',''g'') ==> ',ocorrenciasChar('minha string','g'));
  writeln('ocorrenciasChar(''minha string'',''i'') ==> ',ocorrenciasChar('minha string','i'));
  writeln('ocorrenciasChar(''minha string'',''t'') ==> ',ocorrenciasChar('minha string','t'));
  writeln('ocorrenciasChar(''minha string'',''q'') ==> ',ocorrenciasChar('minha string','q'));

  writeln('ocorrenciasChar(''a'',''b'') ==> ',ocorrenciasChar('a','b'));
  writeln('ocorrenciasChar(''a'',''a'') ==> ',ocorrenciasChar('a','a'));
  writeln('ocorrenciasChar(''aa'',''a'') ==> ',ocorrenciasChar('aa','a'));
  writeln('ocorrenciasChar(''aaa'',''a'') ==> ',ocorrenciasChar('aaa','a'));
  writeln('ocorrenciasChar(''aaaa'',''a'') ==> ',ocorrenciasChar('aaaa','a'));

  readln;
end.
 