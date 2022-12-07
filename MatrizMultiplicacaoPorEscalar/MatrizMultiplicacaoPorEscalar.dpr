program MatrizMultiplicacaoPorEscalar;

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

function multiplicacaoPorEscalar(const a:double; const m:matriz):matriz;
var
  i,j,nlinhas,ncolunas:integer;
begin
  nlinhas:=length(m);
  ncolunas:=length(m[0]);
  setLength(result,nlinhas,ncolunas);
  for i:=0 to nlinhas-1 do
    for j:=0 to ncolunas-1 do
      result[i,j]:=a*m[i,j];
end;

var
  m:matriz;

begin
  setLength(m,3,3);
  m[0,0]:=12;
  m[0,1]:=100;
  m[0,2]:=3;
  m[1,0]:=2;
  m[1,1]:=7;
  m[1,2]:=19;
  m[2,0]:=76;
  m[2,1]:=87;
  m[2,2]:=55;

  writeln('m =');
  imprimeMatriz(m);
  writeln;

  writeln('2*m =');
  imprimeMatriz(multiplicacaoPorEscalar(2,m));
  writeln;

  writeln('3*m =');
  imprimeMatriz(multiplicacaoPorEscalar(3,m));
  writeln;

  writeln('7*m =');
  imprimeMatriz(multiplicacaoPorEscalar(7,m));
  writeln;

  writeln('10*m =');
  imprimeMatriz(multiplicacaoPorEscalar(10,m));
  writeln;

  writeln('------------------------------------------------------------------');
  setLength(m,4,2);
  m[0,0]:=12;
  m[0,1]:=100;
  m[1,0]:=2;
  m[1,1]:=7;
  m[2,0]:=76;
  m[2,1]:=87;
  m[3,0]:=1;
  m[3,1]:=28;


  writeln('m =');
  imprimeMatriz(m);
  writeln;

  writeln('2*m =');
  imprimeMatriz(multiplicacaoPorEscalar(2,m));
  writeln;

  writeln('3*m =');
  imprimeMatriz(multiplicacaoPorEscalar(3,m));
  writeln;

  writeln('7*m =');
  imprimeMatriz(multiplicacaoPorEscalar(7,m));
  writeln;

  writeln('10*m =');
  imprimeMatriz(multiplicacaoPorEscalar(10,m));
  writeln;

  readln;
end.
