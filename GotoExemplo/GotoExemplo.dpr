program GotoExemplo;

{$APPTYPE CONSOLE}

uses
  SysUtils;

label 1, 2, 3, 4, 5, 6, 7, 8, 9;

begin
  1:
    writeln('label 1');
    sleep(3000);
    goto 4;

  2:
    writeln('label 2');
    sleep(3000);
    goto 7;

  3:
    writeln('label 3');
    sleep(3000);
    goto 8;

  4:
    writeln('label 4');
    sleep(3000);
    goto 2;

  5:
    writeln('label 5');
    sleep(3000);
    goto 9;


  6:
    writeln('label 6');
    sleep(3000);
    goto 1;

  7:
    writeln('label 7');
    sleep(3000);
    goto 3;

  8:
    writeln('label 8');
    sleep(3000);
    goto 5;

  9:
    writeln('label 9');
    sleep(3000);
    goto 6;
end.
 