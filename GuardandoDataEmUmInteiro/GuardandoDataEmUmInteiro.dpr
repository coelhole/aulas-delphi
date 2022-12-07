program GuardandoDataEmUmInteiro;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  data=cardinal;

function codificarData(const dia,mes,ano:word):data;
begin
  if (dia<1) or (dia>31) then begin
    writeln('codificarData: dia invalido: ',dia,': fora do intervalo [1,31]');
    exit;
  end;

  if (mes<1) or (mes>12) then begin
    writeln('codificarData: mes invalido: ',mes,': fora do intervalo [1,12]');
    exit;
  end;

  result:=ano;
  result:=result shl 4;
  result:=result or mes;
  result:=result shl 5;
  result:=result or dia;
end;

function decodificarData(const minhaData:data):string;
var
  dia,mes,ano:word;
begin
  ano:=minhaData shr 9;
  mes:=(minhaData and 1023) shr 5;
  dia:=(minhaData shl 27) shr 27;
  result:=format('%.2d/%.2d/%.4d',[dia,mes,ano]);
end;

var
  dt:data;

begin
  dt:=codificarData(18,11,2022);
  writeln(decodificarData(dt));
  readln;
end.
 