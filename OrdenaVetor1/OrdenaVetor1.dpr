program OrdenaVetor1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  inteiros:array[1..20] of integer = (234,12,13,7,432,543,11,2,0,999,203,765,800,100,65,45,432,1000,1,4);
  i,j,n:integer;

begin

  for i:=1 to 19 do
    for j:=i+1 to 20 do
      if inteiros[j]<inteiros[i] then begin
        n:=inteiros[i];
        inteiros[i]:=inteiros[j];
        inteiros[j]:=n;
      end;

  for i:=1 to 20 do
    writeln(inteiros[i]);

  readln;
end.
