unit MinhaSegundaUnit;

interface

uses
  MinhaPrimeiraUnit;

type
  inteiro=integer;

procedure revhelloworld;
procedure escreveNaipe(const meunaipe:naipe);

implementation

var
  str:string='tste';

procedure revhelloworld;
var
  msg:string;
begin
  msg:='Hello World!';
  writeln(revstring(msg));
end;

procedure escreveNaipe(const meunaipe:naipe);
begin
  case meunaipe of
    paus:writeln('paus');
    copas:writeln('copas');
    espada:writeln('espada');
    ouro:writeln('ouro');
    else
      writeln('naipe desconhecido');
  end;
end;

procedure tchau2;
begin
  writeln('tchau2');
end;

initialization

finalization
  tchau2;
end.
