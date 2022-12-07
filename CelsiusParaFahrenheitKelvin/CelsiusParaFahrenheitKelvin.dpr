program CelsiusParaFahrenheitKelvin;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure CelsiusFahrenheitKelvin(const celsius:single; out fahrenheit:single; out kelvin:single);
begin
  fahrenheit:=celsius*9/5+32;
  kelvin:=celsius+273;
end;

var
  celsius:integer;
  fahrenheit,kelvin:single;

begin
  writeln('Celsius',#9#9,'Fahren.',#9#9,'Kelvin');
  for celsius:=-273 to 500 do begin
    CelsiusFahrenheitKelvin(celsius,fahrenheit,kelvin);
    writeln(celsius,',00',#9#9,format('%f',[fahrenheit]),#9#9,format('%f',[kelvin]));
  end;

  readln;
end.
 