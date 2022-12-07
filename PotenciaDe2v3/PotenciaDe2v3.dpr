program PotenciaDe2v3;

{$APPTYPE CONSOLE}

uses
  SysUtils;

function pot2(const exp:integer):integer;
var
  n:integer;
const
  potencia:array[0..31] of integer
    =(1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768,65536,131072,262144,524288,1048576,2097152,4194304,8388608,16777216,33554432,67108864,134217728,268435456,536870912,1073741824,2147483648);
begin
  if exp<0 then begin
    writeln('pot2: condicao exp>=0 nao observada');
    result:=0;
    exit;
  end;

  result:=potencia[exp];
end;

var
  n:integer;

begin
  writeln('n',#9,'2^n');
  for n:=0 to 30 do
    writeln(n,#9,pot2(n));

  readln;
end.
 