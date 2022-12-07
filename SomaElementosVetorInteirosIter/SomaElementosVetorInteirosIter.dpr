program SomaElementosVetorInteirosIter;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  intarr=array of integer;

function somaElementosVetor(const meuArray:intarr):integer;
var
  i:integer;
begin
  result:=0;
  for i:=0 to length(meuArray)-1 do
    result:=result+meuArray[i];
end;

procedure forneceVetor(out meuArray:intarr);
var
  arrlen,i:integer;
begin
  arrlen:=1+random(50);
  setLength(meuArray,arrlen);
  for i:=0 to arrlen-1 do
    meuArray[i]:=1+random(1000);
end;

procedure imprimeVetor(const meuArray:intarr);
var
  i:integer;
begin
  write('(');
  for i:=0 to length(meuArray)-2 do
    write(meuArray[i],',');
  write(meuArray[length(meuArray)-1],')');
end;

var
  n:integer;
  meuVetor:intarr;

begin
  for n:=1 to 100 do begin
    forneceVetor(meuVetor);
    write('meuVetor = ');
    imprimeVetor(meuVetor);
    writeln;
    writeln('somaElementosVetor(meuVetor) -> ',somaElementosVetor(meuVetor));
    writeln;
  end;

  readln;
end.
 