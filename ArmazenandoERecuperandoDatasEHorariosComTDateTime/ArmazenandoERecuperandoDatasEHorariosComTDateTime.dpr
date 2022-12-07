{
  O tipo TDateTime armazena data (dia, mês, ano) e horário (hora, minutos, segundos, milissegundos) em um double.
  Na parte inteira do double é armazenada a data e na parte fracionária o horário. Se o TDateTime tem a parte fracionária zerada, o horário correspondente é 00:00:00.000.
  Um TDateTime populado com 0 corresponde a 30/12/1899 00:00:00.000 (zero hora do dia 30 de dezembro de 1899).
  0 - 30/12/1899
  1 - 31/12/1899
  2 - 01/01/1900
  3 - 02/01/1900
  .
  .
  .
  Número negativos representam datas anteriores a 30/12/1899.
  -1 - 29/12/1899
  -2 - 28/12/1899
  -3 - 27/12/1899
  -4 - 26/12/1899
  .
  .
  .
}

program ArmazenandoERecuperandoDatasEHorariosComTDateTime;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  DateUtils;

var
  i:integer;
  dt:tdatetime;
  ano,mes,dia,hora,min,seg,milisseg:word;

begin
  //a função function formatdatetime(const stringDeFormatacao:string; dateTime:TDateTime):string; (definida na unit SysUtils)
  //e usada abaixo recebe uma string de formatação de data-horário e um tdatetime
  //e devolve uma string que representa uma data ou/e um horário
  //yy = ano, dois últimos dígitos
  //yyyy = ano, os quatro dígitos
  //m = mês, sem 0 a esquerda quando for < 10
  //mm = mês, dois dígitos
  //d = dia, sem 0 a esquerda quando for < 10
  //dd = dia, dois dígitos
  //h = hora, sem 0 a esquerda quando < 10
  //hh = hora, dois dígitos
  //n	= minutos, sem 0 a esquerda quando < 10
  //nn = minutos, dois dígitos
  //s = segundos, sem 0 a esquerda quando < 10
  //ss = segundos, dois dígitos
  //z	= milissegundos, sem zero[s] a esquerda
  //zzz	= milissegundos, três dígitos

  //observe que incrementar um tdatetime em 1 unidade inteira é o mesmo que avançar 1 dia
  dt:=0;
  for i:=0 to 50 do begin
    writeln(format('%.0f',[dt]),#9#9,formatDateTime('dd/mm/yyyy', dt));
    dt:=dt+1;
  end;

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //observe que decrementar um tdatetime em 1 unidade inteira é o mesmo que recuar 1 dia
  dt:=50;
  for i:=50 downto -50 do begin
    writeln(format('%.0f',[dt]),#9#9,formatDateTime('dd/mm/yyyy', dt));
    dt:=dt-1;
  end;

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function encodeDate(ano,mes,dia:word):TDateTime; (definida na unit SysUtils)
  //recebe como parâmetro o ano, o mês e o dia e devolve o tdatetime correspondente
  writeln('encodeDate');
  dt:=encodeDate(2022,9,23);
  writeln(format('%.0f',[dt]));
  writeln(formatDateTime('dd/mm/yyyy',dt));
  writeln(formatDateTime('yyyy-mm-dd',dt));

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function strToDate(const data:string):TDateTime; (definida na unit SysUtils)
  //recebe uma string que representa uma data e devolve o tdatetime correspodente
  writeln('strToDate');
  dt:=strToDate('22/09/2022');
  writeln(format('%.0f',[dt]));
  writeln(formatDateTime('dd/mm/yyyy',dt));

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //use a função function encodeDateTime(const AYear,AMonth,ADay,AHour,AMinute,ASecond,AMilliSecond:word): TDateTime;
  //se desejar armazenar data E HORÁRIO
  writeln('encodeDateTime');
  dt:=encodeDateTime(2022,9,23,13,35,25,123);//vai guardar 23/09/2022 13:35:25.123
  writeln(format('%.9f',[dt]));
  writeln(formatDateTime('dd/mm/yyyy hh:nn:ss.zzz',dt));

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //se desejar guardar apenas o horário
  //use a função function encodeTime(hora,min,seg,milisseg:word): TDateTime; (definida na unit SysUtils)
  writeln('encodeTime');
  dt:=encodeTime(13,35,25,123);
  writeln(format('%.9f',[dt]));
  writeln(formatDateTime('hh:nn:ss.zzz',dt));
  writeln(formatDateTime('dd/mm/yyyy hh:nn:ss.zzz',dt));//observe que, ao se usar a encodeTime, a parte inteira do double é zerada (30/12/1899)

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //function strToTime(const horario:string):TDateTime;
  //recebe uma string que representa um horário e devolve o tdatetime correspodente
  //a parte inteira do tdatetime vem zerada
  writeln('strToTime');
  dt:=strToTime('13:35');
  writeln(format('%.9f',[dt]));
  writeln(formatDateTime('hh:nn:ss',dt));
  dt:=strToTime('13:35:25');
  writeln(format('%.9f',[dt]));
  writeln(formatDateTime('hh:nn:ss',dt));

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function dateToStr(data:TDateTime):string; recebe um tdatetime
  //e devolve uma string com a data armazenada no tdatetime
  writeln('dateToStr');
  dt:=encodeDateTime(2022,9,23,13,35,25,123);
  writeln(dateToStr(dt));

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function timeToStr(horario:TDateTime):string; recebe um tdatetime
  //e devolve uma string com o horário armazenado no tdatetime
  writeln('timeToStr');
  writeln(timeToStr(dt));

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //procedure decodeDate(const data:TDateTime; var ano,mes,dia:word); (definida na unit SysUtils)
  //pede um tdatetime e parâmetros var ano, mes e dia para armazenar neles o ano, o mês e o dia, respectivamente,
  //do tdatetime recebido
  writeln('decodeDate');
  writeln(formatDateTime('dd/mm/yyyy',dt));
  decodeDate(dt,ano,mes,dia);
  writeln('ano = ',ano);
  writeln('mes = ',mes);
  writeln('dia = ',dia);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //procedure decodeTime(const dateTime:TDateTime; var hora,min,seg,milisseg:word); (definida na unit SysUtils)
  //pede um tdatetime e parâmetros var hora,min,seg,milisseg para armazenar neles a hora, os minutos, os segundos e os milissegundos, respectivamente,
  //do tdatetime recebido
  writeln('decodeTime');
  writeln(formatDateTime('hh:nn:ss.zzz',dt));
  decodeTime(dt,hora,min,seg,milisseg);
  writeln('hora = ',hora);
  writeln('min = ',min);
  writeln('seg = ',seg);
  writeln('milisseg = ',milisseg);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //procedure decodeDateTime(const AValue: TDateTime; out AYear, AMonth, ADay, AHour, AMinute, ASecond, AMilliSecond: Word); (definida na unit DateUtils)
  //une, numa mesma procedure, o que fazem as procedures decodeDate e decodeTime
  writeln('decodeDateTime');
  writeln(formatDateTime('dd/mm/yyyy hh:nn:ss.zzz',dt));
  decodeDateTime(dt,ano,mes,dia,hora,min,seg,milisseg);
  writeln('ano = ',ano);
  writeln('mes = ',mes);
  writeln('dia = ',dia);
  writeln('hora = ',hora);
  writeln('min = ',min);
  writeln('seg = ',seg);
  writeln('milisseg = ',milisseg);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function yearOf(const valor:TDateTime):word; (definida na unit DateUtils)
  //recebe um tdatetime e devolve o ano da data armazenada no tdatetime
  writeln('yearOf');
  writeln(formatDateTime('yyyy',dt));
  ano:=yearOf(dt);
  writeln('ano = ',ano);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function monthOf(const valor:TDateTime):word; (definida na unit DateUtils)
  //recebe um tdatetime e devolve o mês da data armazenada no tdatetime
  writeln('monthOf');
  writeln(formatDateTime('mm',dt));
  mes:=monthOf(dt);
  writeln('mes = ',mes);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function dayOf(const valor:TDateTime):word; (definida na unit DateUtils)
  //recebe um tdatetime e devolve o dia da data armazenada no tdatetime
  writeln('dayOf');
  writeln(formatDateTime('dd',dt));
  dia:=dayOf(dt);
  writeln('dia = ',dia);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function hourOf(const valor:TDateTime):word; (definida na unit DateUtils)
  //recebe um tdatetime e devolve a hora do horário armazenado no tdatetime
  writeln('hourOf');
  writeln(formatDateTime('hh',dt));
  hora:=hourOf(dt);
  writeln('hora = ',hora);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function minuteOf(const valor:TDateTime):word; (definida na unit DateUtils)
  //recebe um tdatetime e devolve os minutos do horário armazenado no tdatetime
  writeln('minuteOf');
  writeln(formatDateTime('nn',dt));
  min:=minuteOf(dt);
  writeln('min = ',min);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function secondOf(const valor:TDateTime):word; (definida na unit DateUtils)
  //recebe um tdatetime e devolve os segundos do horário armazenado no tdatetime
  writeln('secondOf');
  writeln(formatDateTime('ss',dt));
  seg:=secondOf(dt);
  writeln('seg = ',seg);

  writeln;
  writeln('------------------------------------------------------------------');
  writeln;

  //a função function milliSecondOf(const valor:TDateTime):word; (definida na unit DateUtils)
  //recebe um tdatetime e devolve os milissegundos do horário armazenado no tdatetime
  writeln('milliSecondOf');
  writeln(formatDateTime('zzz',dt));
  milisseg:=milliSecondOf(dt);
  writeln('milisseg = ',milisseg);
  
  
  
  


  //Ver https://docwiki.embarcadero.com/Libraries/Sydney/en/System.DateUtils
  //para mais procedures e funções úteis relacionadas a datas e horários

  readln;
end.
 