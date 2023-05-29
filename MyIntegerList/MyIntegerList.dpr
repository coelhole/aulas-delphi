program MyIntegerList;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TIntegerList=class
  private
    fIntegerArray:array of integer;
    function GetSize:integer;
    function GetElement(const i:integer):integer;
    procedure SetElement(const i,newValue:integer);    
  public
    procedure Add(const myInt:integer); overload;
    procedure Add(const myIntArr:array of integer); overload;
    function Remove:integer;
    procedure Print;
    property Size:integer read GetSize;
    property Element[const i:integer]:integer read GetElement write SetElement;
  end;

function TIntegerList.GetSize:integer;
begin
  result:=length(fIntegerArray);
end;

function TIntegerList.GetElement(const i:integer):integer;
begin
  if (i<0) or (i>=Size) then
    raise exception.create('indice '+inttostr(i)+' invalido')
  else
    result:=fIntegerArray[i];
end;

procedure TIntegerList.SetElement(const i,newValue:integer);
begin
  if (i<0) or (i>=Size) then
    raise exception.create('indice '+inttostr(i)+' invalido')
  else
    fIntegerArray[i]:=newValue;
end;

procedure TIntegerList.Add(const myInt:integer);
begin
  setLength(fIntegerArray,Size+1);
  fIntegerArray[Size-1]:=myInt;
end;

procedure TIntegerList.Add(const myIntArr:array of integer);
var
  i:integer;
begin
  setLength(fIntegerArray,Size+Length(myIntArr));
  for i:=0 to Length(myIntArr)-1 do
    fIntegerArray[Size-Length(myIntArr)+i]:=myIntArr[i];
end;

function TIntegerList.Remove:integer;
begin
  if Size=0 then begin
    writeln('nao ha inteiros a remover');
    result:=-1;
    exit;
  end;
  result:=fIntegerArray[Size-1];
  setLength(fIntegerArray,Size-1);
end;

procedure TIntegerList.Print;
var
  i:integer;
begin
  for i:=0 to Size-1 do
    writeln('i',i,' = ',Element[i]);
end;

procedure PopularArray(var meuArray:array of integer);
var
  i:integer;
begin
  randomize;
  for i:=low(meuArray) to high(meuArray) do
    meuArray[i]:=random(2000000000);
end;

var
  i,j:integer;
  minhaListaDeInteiros:TIntegerList;
  meuarray1:array[1..5] of integer;
  meuarray2:array of integer;

begin
  minhaListaDeInteiros:=TIntegerList.Create;

  writeln('Lista criada. Tamanho lista = ',minhaListaDeInteiros.Size);

  randomize;

  for i:=1 to random(40) do begin
    minhaListaDeInteiros.Add(random(2000000000));
    writeln('Inteiro ',minhaListaDeInteiros.Element[minhaListaDeInteiros.Size-1],' adicionado a lista');
    writeln('Tamanho lista = ',minhaListaDeInteiros.Size);
  end;

  for i:=1 to random(minhaListaDeInteiros.Size) div 2 do begin
    j:=random(minhaListaDeInteiros.Size-1);
    writeln('Elemento na posicao ',j,' = ',minhaListaDeInteiros.Element[j]);
  end;

  for i:=1 to random(minhaListaDeInteiros.Size) do begin
    writeln('Inteiro ',minhaListaDeInteiros.Remove,'  removido');
    writeln('Tamanho lista = ',minhaListaDeInteiros.Size);
  end;

  minhaListaDeInteiros.Print;

  for i:=1 to 50 do
    minhaListaDeInteiros.Remove;

  minhaListaDeInteiros.Add(0);

  PopularArray(meuArray1);
  minhaListaDeInteiros.Add(meuArray1);
  minhaListaDeInteiros.Print;

  setLength(meuArray2,15);
  PopularArray(meuArray2);
  minhaListaDeInteiros.Add(meuArray2);
  minhaListaDeInteiros.Print;

  for i:=0 to minhaListaDeInteiros.Size-1 do
    minhaListaDeInteiros.Element[i]:=0;

  minhaListaDeInteiros.Print;

  readln;
end.
