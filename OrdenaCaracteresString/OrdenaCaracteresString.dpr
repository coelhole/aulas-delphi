program OrdenaCaracteresString;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  minhaString:string;
  i,j:integer;
  c:char;

begin
  minhaString:='minhapalavra';
  for i:=1 to length(minhaString)-1 do
    for j:=i+1 to length(minhaString) do begin
      if minhaString[j]<minhaString[i] then begin
        c:=minhaString[i];
        minhaString[i]:=minhaString[j];
        minhaString[j]:=c;
      end;
    end;

  writeln(minhaString);
  readln;
end.
