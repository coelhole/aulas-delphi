program EscreverLinhasNumArquivoDeRegistros;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  ARQUIVO_DE_REGISTROS='C:\Users\Administrador\Desktop\aulas-delphi\aulas-de-programacao-delphi\EscreverLinhasNumArquivoDeRegistros\registros.txt';

var
  registros:textfile;
  linha:string;
  escreverlinha:boolean;

begin
  assignfile(registros,ARQUIVO_DE_REGISTROS);

  if FileExists(ARQUIVO_DE_REGISTROS) then
    append(registros)
  else
    rewrite(registros);

  repeat
    write('ENTRE COM UMA LINHA: ');
    readln(linha);
    linha:=formatdatetime('dd/mm/yyyy hh:nn:ss',now)+' '+linha;
    writeln(registros,linha);
    write('DESEJA ESCREVER MAIS UMA LINHA NO ARQUIVO DE REGISTROS (S\s para Sim)? ');
    readln(linha);
    escreverlinha:=(linha='S') or (linha='s');
  until not escreverlinha;

  closefile(registros);
end.
 