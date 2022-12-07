//uma maneira de obter o tempo de execução transcorrido de uma rotina
//precisão RUIM! (aceitável para a ordem de segundos)
//para milissegundos já ruim
program TDateTimeNowIntervalo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  initime,endtime:tdatetime;

begin
  initime:=now;
  sleep(1);//1ms
  endtime:=now;
  writeln(formatdatetime('hh:nn:ss.zzz',endtime-initime));

  initime:=now;
  sleep(250);//250ms = 0.25s
  endtime:=now;
  writeln(formatdatetime('hh:nn:ss.zzz',endtime-initime));

  initime:=now;
  sleep(500);//500ms = 0.5s
  endtime:=now;
  writeln(formatdatetime('hh:nn:ss.zzz',endtime-initime));

  initime:=now;
  sleep(750);//750ms = 0.75s
  endtime:=now;
  writeln(formatdatetime('hh:nn:ss.zzz',endtime-initime));

  initime:=now;
  sleep(900);//900ms = 0.9s
  endtime:=now;
  writeln(formatdatetime('hh:nn:ss.zzz',endtime-initime));

  initime:=now;
  sleep(1000);//1000ms = 1s
  endtime:=now;
  writeln(formatdatetime('hh:nn:ss.zzz',endtime-initime));

  initime:=now;
  sleep(10000);//10000 ms = 10s
  endtime:=now;
  writeln(formatdatetime('hh:nn:ss.zzz',endtime-initime));

  initime:=now;
  sleep(100000);//100000 ms = 100s = 1min40s
  endtime:=now;
  writeln(formatdatetime('hh:nn:ss.zzz',endtime-initime));

  readln;
end.

