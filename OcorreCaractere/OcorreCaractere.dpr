program OcorreCaractere;

{$APPTYPE CONSOLE}

uses
  SysUtils;

//devolve a posição da primeira ocorrência do caractere meuChar na string minhaString
//se o caractere não ocorre, retorna 0
function ocorreChar(const minhaString:string; const meuChar:char):integer;
var
  i:integer;
begin
  result:=0;
  for i:=1 to length(minhaString) do
    if minhaString[i]=meuChar then begin
      result:=i;
      break;
    end;
end;

begin
  writeln('ocorreChar(''minha string'',''n'') ==> ',ocorreChar('minha string','n'));
  writeln('ocorreChar(''minha string'',''z'') ==> ',ocorreChar('minha string','z'));
  writeln('ocorreChar(''minha string'',''m'') ==> ',ocorreChar('minha string','m'));
  writeln('ocorreChar(''minha string'',''a'') ==> ',ocorreChar('minha string','a'));
  writeln('ocorreChar(''minha string'',''g'') ==> ',ocorreChar('minha string','g'));
  writeln('ocorreChar(''minha string'',''i'') ==> ',ocorreChar('minha string','i'));
  writeln('ocorreChar(''minha string'',''t'') ==> ',ocorreChar('minha string','t'));
  writeln('ocorreChar(''minha string'',''q'') ==> ',ocorreChar('minha string','q'));      
  readln;
end.
 