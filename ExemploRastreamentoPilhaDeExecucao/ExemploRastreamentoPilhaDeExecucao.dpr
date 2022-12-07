program ExemploRastreamentoPilhaDeExecucao;

{$APPTYPE CONSOLE}

uses
  SysUtils;

procedure proc9;
begin
end;

procedure proc8;
begin
  writeln('entra na proc9');
  proc9;
  writeln('sai da proc9');
end;

procedure proc7;
begin
  writeln('entra na proc8');
  proc8;
  writeln('sai da proc8');
end;

procedure proc6;
begin
  writeln('entra na proc7');
  proc7;
  writeln('sai da proc7');
end;

procedure proc5;
begin
  writeln('entra na proc6');
  proc6;
  writeln('sai da proc6');
end;

procedure proc4;
begin
  writeln('entra na proc5');
  proc5;
  writeln('sai da proc5');
end;

procedure proc3;
begin
  writeln('entra na proc4');
  proc4;
  writeln('sai da proc4');
end;

procedure proc2;
begin
  writeln('entra na proc3');
  proc3;
  writeln('sai da proc3');
end;

procedure proc1;
begin
  writeln('entra na proc2');
  proc2;
  writeln('sai da proc2');
end;

begin
  writeln('entra na proc1');
  proc1;
  writeln('sai da proc1');
  readln;
end.
 