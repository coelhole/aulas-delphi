unit MinhaPrimeiraUnit;

interface

type
  naipe=(paus,copas,espada,ouro);

var
  minhavariavel:string;

function revstring(const minhaString:string):string;
function circunferencia(const raio:double):double;
procedure escreveNaTelaMinhaConstante;
procedure escreveNaTelaUmaMensagem;
procedure escreveValorMinhaVariavel;

implementation

const
  MINHA_CONSTANTE='MINHA CONSTANTE';

function revstring(const minhaString:string):string;
var
  i:integer;
begin
  for i:=length(minhaString) downto 1 do
    result:=result+minhaString[i];
end;

function circunferencia(const raio:double):double;
begin
  result:=2*PI*raio;
end;

procedure escreveNaTelaMinhaConstante;
begin
  writeln(MINHA_CONSTANTE);
end;

procedure helloworld;
begin
  writeln('Hello World!');
end;

procedure escreveNaTelaUmaMensagem;
begin
  helloworld;
end;

procedure escreveValorMinhaVariavel;
begin
  writeln(minhavariavel);
end;

procedure tchau;
begin
  writeln('tchau!');
end;

initialization
  minhavariavel:='TESTE';
  helloworld;
finalization
  tchau;
end.
