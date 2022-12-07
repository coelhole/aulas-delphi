program ShiftLeft;

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

  i:=1;
  while(i<>255)do begin

    b:=i;
    writeln('b := ',i,';');

    while(b<>0)do begin
      writeln('b = ',b);
      b:=b shl 1;
      writeln('b shl 1 -> b = ',b);
    end;
    writeln;

    inc(i);
  end;

  writeln('low(shortint) = ',low(shortint));
  writeln('high(shortint) = ',high(shortint));
  writeln;

  writeln('var short:shortint;');
  writeln;

  j:=low(shortint);
  while(j<>0)do begin

    short:=j;
    writeln('short := ',j,';');

    while(short<>0)do begin
      writeln('short = ',short);
      short:=short shl 1;
      writeln('short shl 1 -> short = ',short);
    end;
    writeln;

    inc(j);
  end;

  j:=1;
  while(j<>high(short))do begin

    short:=j;
    writeln('short := ',j,';');

    while(short<>0)do begin
      writeln('short = ',short);
      short:=short shl 1;
      writeln('short shl 1 -> short = ',short);
    end;
    writeln;

    inc(j);
  end;

  readln;
end.
