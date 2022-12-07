program ConcatArray2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  intarr=array of integer;

procedure imprimeArray(const arr:array of integer);
var
  i:integer;
begin
  write('(');
  for i:=0 to length(arr)-2 do
    write(arr[i],',');
  write(arr[length(arr)-1],')');
end;

function concatArray(const arr1,arr2:array of integer):intarr;
begin
  setLength(result,length(arr1)+length(arr2));
  move(arr1[0],result[0],length(arr1)*sizeOf(integer));
  move(arr2[0],result[length(arr1)],length(arr2)*sizeOf(integer));
end;

var
  i,j,k,len1,len2:integer;
  a1,a2:intarr;

begin
  for i:=1 to 80 do begin

    j:=random(30);
    k:=random(30);

    len1:=1+random(j);
    len2:=1+random(k);

    setLength(a1,len1);
    setLength(a2,len2);

    for j:=0 to len1-1 do begin
      k:=random(1000);
      a1[j]:=random(k);
    end;

    write('a1 = ');
    imprimeArray(a1);
    writeln;

    for j:=0 to len2-1 do begin
      k:=random(1000);
      a2[j]:=random(k);
    end;

    write('a2 = ');
    imprimeArray(a2);
    writeln;

    write('concatArray(a1,a2) = ');
    imprimeArray(concatArray(a1,a2));
    writeln;
  end;

  readln;
end.
