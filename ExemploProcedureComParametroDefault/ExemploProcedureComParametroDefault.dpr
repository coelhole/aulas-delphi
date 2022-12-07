program ExemploProcedureComParametroDefault;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  intarr=array of integer;

procedure imprimeVetor(const arr:intarr; const sep:char=','; const parenteses:boolean=true);
var
  i:integer;
begin
  if parenteses then write('(');
  for i:=0 to length(arr)-2 do
    write(arr[i],sep);
  write(arr[length(arr)-1]);
  if parenteses then write(')');
end;

procedure novoVetor(out vetor:intarr);
var
  tamanho,i:integer;
begin
  tamanho:=1+random(30);
  setLength(vetor,tamanho);
  for i:=0 to tamanho-1 do
    vetor[i]:=random(1000);
end;

var
  meuVetor:intarr;
  i:integer;

begin
  for i:=1 to 20 do begin
    novoVetor(meuVetor);
    write('meuVetor = ');
    imprimeVetor(meuVetor);
    writeln;
  end;

  writeln;

  for i:=1 to 20 do begin
    novoVetor(meuVetor);
    write('meuVetor = ');
    imprimeVetor(meuVetor,';');
    writeln;
  end;

  writeln;

  for i:=1 to 20 do begin
    novoVetor(meuVetor);
    write('meuVetor = ');
    imprimeVetor(meuVetor,';',false);
    writeln;
  end;

  writeln;

  for i:=1 to 20 do begin
    novoVetor(meuVetor);
    write('meuVetor = ');
    imprimeVetor(meuVetor,#9,false);
    writeln;
  end;

  readln;
end.
 