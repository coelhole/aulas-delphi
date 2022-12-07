program VetorDeTrasParaFrenteRecursiv;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  intarr=array of integer;

procedure vetorDeTrasParaFrente(var inteiros:intarr; const pos:integer);
var
  n:integer;
begin
  if pos <= (length(inteiros) div 2) then exit;
  n:=inteiros[pos];
  inteiros[pos]:=inteiros[length(inteiros)-pos-1];
  inteiros[length(inteiros)-pos-1]:=n;
  vetorDeTrasParaFrente(inteiros,pos-1);
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
  meuVetor:intarr;
  i:integer;

begin
  for i:=1 to 100 do begin
    forneceVetor(meuVetor);
    write('meuVetor = ');
    imprimeVetor(meuVetor);
    vetorDeTrasParaFrente(meuVetor,length(meuVetor)-1);
    write(#10'meuVetor = ');
    imprimeVetor(meuVetor);
    writeln;
    writeln;
  end;

  readln;
end.
 