program ponteiros6;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  ponto=record
    x,
    y
      :integer;
  end;

var
  p1:ponto;
  pint:PInteger;//PInteger=^integer (está declarado na unit System)

begin
  p1.x:=75;
  writeln('p1.x:=75;');
  p1.y:=100;
  writeln('p1.y:=100;');
  writeln;

  writeln('@p1 = ',integer(@p1));
  writeln('em hexadecimal: @p1 = ',format('%p',[@p1]));
  writeln;

  pint:=@p1.x;
  writeln('pint:=@p1.x;');
  writeln('pint = ',integer(pint));
  writeln('em hexadecimal: pint = ',format('%p',[pint]));
  writeln;
  //veja que um ponteiro para um registro é, na verdade,
  //um ponteiro para o primeiro campo do registro

  writeln('writeln(PInteger(@p1)^);');
  writeln(PInteger(@p1)^);
  writeln;

  writeln('writeln(PInteger(@p1.x)^);');
  writeln(PInteger(@p1.x)^);
  writeln;

  writeln('writeln(pint^);');
  writeln(pint^);
  writeln;

  readln;
end.
 