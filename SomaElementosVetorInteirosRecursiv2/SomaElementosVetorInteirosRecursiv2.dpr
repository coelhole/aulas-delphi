program SomaElementosVetorInteirosRecursiv2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  intarr=array of integer;

function somaElementosVetor(const meuArray:intarr; const pos:integer):integer;
begin
  if pos = 0 then
    result:=meuArray[0]
  else
    result:=meuArray[pos]+somaElementosVetor(meuArray,pos-1);
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
    writeln('somaElementosVetor(meuVetor,length(meuVetor)-1) -> ',somaElementosVetor(meuVetor,length(meuVetor)-1));
    writeln;
  end;

  readln;
end.

