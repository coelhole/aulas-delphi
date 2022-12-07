program MatrizTransposta;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  matriz=array of array of double;

procedure imprimeMatriz(const m:matriz);
var
  i,j:integer;
begin
  for i:=0 to length(m)-1 do begin
    for j:=0 to length(m[0])-1 do
      write(format('%f',[m[i,j]]),#9#9);
    writeln;
  end;
end;

function transposta(const m:matriz):matriz;
var
  i,j:integer;
begin
  setLength(result,length(m[0]),length(m));
  for i:=0 to length(m)-1 do
    for j:=0 to length(m[0])-1 do
      result[j,i]:=m[i,j];
end;

var
  m:matriz;

begin
  setLength(m,1,1);
  m[0,0]:=1;
  writeln('m =');
  imprimeMatriz(m);
  writeln('transposta(m) =');
  imprimeMatriz(transposta(m));
  writeln;

  setLength(m,1,2);
  m[0,0]:=1;
  m[0,1]:=2;
  writeln('m =');
  imprimeMatriz(m);
  writeln('transposta(m) =');
  imprimeMatriz(transposta(m));
  writeln;

  setLength(m,2,1);
  m[0,0]:=1;
  m[1,0]:=2;
  writeln('m =');
  imprimeMatriz(m);
  writeln('transposta(m) =');
  imprimeMatriz(transposta(m));
  writeln;

  setLength(m,2,2);
  m[0,0]:=1;
  m[0,1]:=2;
  m[1,0]:=3;
  m[1,1]:=4;
  writeln('m =');
  imprimeMatriz(m);
  writeln('transposta(m) =');
  imprimeMatriz(transposta(m));
  writeln;

  setLength(m,2,3);
  m[0,0]:=1;
  m[0,1]:=2;
  m[0,2]:=3;
  m[1,0]:=4;
  m[1,1]:=5;
  m[1,2]:=6;
  writeln('m =');
  imprimeMatriz(m);
  writeln('transposta(m) =');
  imprimeMatriz(transposta(m));
  writeln;

  setLength(m,3,2);
  m[0,0]:=1;
  m[0,1]:=2;
  m[1,0]:=3;
  m[1,1]:=4;
  m[2,0]:=5;
  m[2,1]:=6;
  writeln('m =');
  imprimeMatriz(m);
  writeln('transposta(m) =');
  imprimeMatriz(transposta(m));
  writeln;

  readln;
end.
