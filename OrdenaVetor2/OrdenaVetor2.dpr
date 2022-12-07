program OrdenaVetor2;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  intarr=array of integer;

var
  inteiros:intarr;
  i:integer;


procedure ordenarVetor(var arr:intarr);
var
  i,j,n:integer;
begin
  for i:=0 to 18 do
    for j:=i+1 to 19 do
      if inteiros[j]<inteiros[i] then begin
        n:=inteiros[i];
        inteiros[i]:=inteiros[j];
        inteiros[j]:=n;
      end;
end;

begin
  setLength(inteiros,20);

  inteiros[0]:=234;
  inteiros[1]:=12;
  inteiros[2]:=13;
  inteiros[3]:=7;
  inteiros[4]:=432;
  inteiros[5]:=543;
  inteiros[6]:=11;
  inteiros[7]:=2;
  inteiros[8]:=0;
  inteiros[9]:=999;
  inteiros[10]:=203;
  inteiros[11]:=765;
  inteiros[12]:=800;
  inteiros[13]:=100;
  inteiros[14]:=65;
  inteiros[15]:=45;
  inteiros[16]:=432;
  inteiros[17]:=1000;
  inteiros[18]:=1;
  inteiros[19]:=4;

  ordenarVetor(inteiros);

  for i:=0 to 19 do
    writeln(inteiros[i]);

  readln;
end.
