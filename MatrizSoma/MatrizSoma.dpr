program MatrizSoma;

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

function soma(const m1,m2:matriz):matriz;
var
  nlinhas1,nlinhas2,ncolunas1,ncolunas2,i,j:integer;
begin
  nlinhas1:=length(m1);
  ncolunas1:=length(m1[0]);
  nlinhas2:=length(m2);
  ncolunas2:=length(m2[0]);

  if nlinhas1*ncolunas1*nlinhas2*ncolunas2=0 then begin
    writeln('soma: matriz invalida: dimensao nula');
    exit;
  end;

  if (nlinhas1<>nlinhas2) or (ncolunas1<>ncolunas2) then begin
    writeln('soma: matrizes com ordens distintas');
    exit;
  end;

  setLength(result,nlinhas1,ncolunas1);

  for i:=0 to nlinhas1-1 do
    for j:=0 to ncolunas1-1 do
      result[i,j]:=m1[i,j]+m2[i,j];
end;

var
  m1,m2:matriz;

begin

  setLength(m1,2,2);
  m1[0,0]:=1;
  m1[0,1]:=2;
  m1[1,0]:=3;
  m1[1,1]:=4;
  writeln('m1 =');
  imprimeMatriz(m1);

  setLength(m2,2,2);
  m2[0,0]:=10;
  m2[0,1]:=20;
  m2[1,0]:=30;
  m2[1,1]:=40;
  writeln('m2 =');
  imprimeMatriz(m2);

  writeln('m1+m2 =');
  imprimeMatriz(soma(m1,m2));

  setLength(m2,2,3);
  m2[0,2]:=50;
  m2[1,2]:=60;
  writeln('m2 =');
  imprimeMatriz(m2);

  writeln('m1+m2 =');
  imprimeMatriz(soma(m1,m2));

  setLength(m1,2,3);
  m1[0,2]:=5;
  m1[1,2]:=6;
  writeln('m1 =');
  imprimeMatriz(m1);

  writeln('m1+m2 =');
  imprimeMatriz(soma(m1,m2));

  readln;
end.
 