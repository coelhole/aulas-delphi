program ShiftRight;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  b,i:byte;
  short,j:shortint;

begin

  writeln('low(byte) = ',low(byte));
  writeln('high(byte) = ',high(byte));
  writeln;

  writeln('var b:byte;');
  writeln;

  i:=255;
  while(i<>0)do begin

    b:=i;
    writeln('b := ',i,';');

    while(b<>0)do begin
      writeln('b = ',b);
      b:=b shr 1;
      writeln('b shr 1 -> b = ',b);
    end;
    writeln;

    dec(i);
  end;

  writeln('low(shortint) = ',low(shortint));
  writeln('high(shortint) = ',high(shortint));
  writeln;

  writeln('var short:shortint;');
  writeln;

  j:=high(shortint);
  while(j<>0)do begin

    short:=j;
    writeln('short := ',j,';');

    while(short<>0)do begin
      writeln('short = ',short);
      short:=short shr 1;
      writeln('short shr 1 -> short = ',short);
    end;
    writeln;

    dec(j);
  end;

  readln;
end.
