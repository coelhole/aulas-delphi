program MatrizProduto;

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

function produto(const m1,m2:matriz):matriz;
var
  nlinhas1,nlinhas2,ncolunas1,ncolunas2,i,j,n:integer;
begin
  nlinhas1:=length(m1);
  ncolunas1:=length(m1[0]);
  nlinhas2:=length(m2);
  ncolunas2:=length(m2[0]);

  if nlinhas1*ncolunas1*nlinhas2*ncolunas2=0 then begin
    writeln('produto: matriz invalida: dimensao nula');
    exit;
  end;

  if ncolunas1<>nlinhas2 then begin
    writeln('produto: numero de colunas da primeira matriz diferente do numero de linhas da segunda');
    exit;
  end;

  setLength(result,nlinhas1,ncolunas2);

  for i:=0 to nlinhas1-1 do
    for j:=0 to ncolunas2-1 do begin
      result[i,j]:=0;
      for n:=0 to ncolunas1-1 do
        result[i,j]:=result[i,j]+m1[i,n]*m2[n,j];
    end;
end;

var
  m1,m2:matriz;

begin
  setLength(m1,1,1);
  m1[0,0]:=2;
  writeln('m1 =');
  imprimeMatriz(m1);
  writeln;

  setLength(m2,1,1);
  m2[0,0]:=3;
  writeln('m2 =');
  imprimeMatriz(m2);
  writeln;

  writeln('m1m2 =');
  imprimeMatriz(produto(m1,m2));
  writeln;

  writeln('m2m1 =');
  imprimeMatriz(produto(m2,m1));
  writeln;

  setLength(m1,1,2);
  m1[0,0]:=1;
  m1[0,1]:=2;
  writeln('m1 =');
  imprimeMatriz(m1);
  writeln;

  setLength(m2,2,1);
  m2[0,0]:=3;
  m2[1,0]:=4;
  writeln('m2 =');
  imprimeMatriz(m2);
  writeln;

  writeln('m1m2 =');
  imprimeMatriz(produto(m1,m2));
  writeln;

  writeln('m2m1 =');
  imprimeMatriz(produto(m2,m1));
  writeln;

  setLength(m1,2,2);
  m1[0,0]:=1;
  m1[0,1]:=2;
  m1[1,0]:=3;
  m1[1,1]:=4;
  writeln('m1 =');
  imprimeMatriz(m1);
  writeln;

  setLength(m2,2,2);
  m2[0,0]:=5;
  m2[0,1]:=6;
  m2[1,0]:=7;
  m2[1,1]:=8;
  writeln('m2 =');
  imprimeMatriz(m2);
  writeln;

  writeln('m1m2 =');
  imprimeMatriz(produto(m1,m2));
  writeln;

  writeln('m2m1 =');
  imprimeMatriz(produto(m2,m1));
  writeln;

  setLength(m1,3,2);
  m1[0,0]:=1;
  m1[0,1]:=2;
  m1[1,0]:=3;
  m1[1,1]:=4;
  m1[2,0]:=5;
  m1[2,1]:=6;
  writeln('m1 =');
  imprimeMatriz(m1);
  writeln;

  m2[0,0]:=7;
  m2[0,1]:=8;
  m2[1,0]:=9;
  m2[1,1]:=10;
  writeln('m2 =');
  imprimeMatriz(m2);
  writeln;

  writeln('m1m2 =');
  imprimeMatriz(produto(m1,m2));
  writeln;

  writeln('m2m1 =');
  imprimeMatriz(produto(m2,m1));
  writeln;

  readln;
end.
