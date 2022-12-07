program ApagaCaracteres;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure apagar(var str:string; const primeiroCaractere,qtdeCaracteres:integer);
var
  i,strlen:integer;
begin
  strlen:=length(str);

  if (primeiroCaractere<1) or (primeiroCaractere>strlen) then begin
    writeln('apagar: primeiroCaractere: posicao fora da string');
    exit;
  end;

  if qtdeCaracteres<0 then begin
    writeln('apagar: quantidadeCaracteres < 0');
    exit;
  end;

  if qtdeCaracteres>strlen-primeiroCaractere then
    setLength(str,primeiroCaractere-1)
  else begin
    for i:=primeiroCaractere+qtdeCaracteres to strlen do
      str[i-qtdeCaracteres]:=str[i];
    setLength(str,strlen-qtdeCaracteres);
  end;
end;

var
  str:string;
  i,j:integer;

begin
  writeln('procedure apagar(var str:string; const primeiroCaractere,qtdeCaracteres:integer);',#10#10);

  for i:=1 to length('minha amada string') do
    for j:=0 to 30 do begin
      str:='minha amada string';
      writeln('str := ''',str,''';');
      apagar(str,i,j);
      writeln('apagar(str,',i,',',j,');');
      writeln('str = ''',str,'''');
      writeln;
    end;

  readln;
end.
 