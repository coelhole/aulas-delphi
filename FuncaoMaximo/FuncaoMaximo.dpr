program FuncaoMaximo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function max2(const m,n:integer):integer;
begin
  if m>n then
    result:=m
  else
    result:=n;
end;

function max3(const m,n,p:integer):integer;
begin
  result:=max2(max2(m,n),p);
end;

function max(const intarr:array of integer):integer;
var
  i,len:integer;
begin
  len:=length(intarr);
  if len=0 then begin
    writeln('max: intarr length = 0');
    exit;
  end;

  result:=intarr[0];
  for i:=1 to len-1 do
    result:=max2(result,intarr[i]);
end;

var
  i,m,n,p:integer;
  intarr:array of integer;

begin
  writeln('max2(-1,0) = ',max2(-1,0));
  writeln('max2(0,-1) = ',max2(0,-1));
  writeln('max2(0,0) = ',max2(0,0));
  writeln('max2(1,2) = ',max2(1,2));
  writeln('max2(2,1) = ',max2(2,1));

  for i:=1 to 100 do begin
    m := random(1000);
    n := random(1000);
    writeln('max2(',m,',',n,') = ',max2(m,n));
  end;

  for i:=1 to 100 do begin
    m := random(1000);
    n := random(1000);
    p := random(1000);
    writeln('max3(',m,',',n,',',p,') = ',max3(m,n,p));
  end;

  setLength(intarr,100);
  for i:=0 to 99 do
    intarr[i]:=random(1000);
  write('intarr = (');
  for i:=0 to 98 do
    write(intarr[i],',');
  writeln(intarr[99],')');
  writeln('max(intarr) = ',max(intarr));

  readln;
end.
 