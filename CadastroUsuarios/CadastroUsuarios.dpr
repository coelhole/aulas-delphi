program CadastroUsuarios;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  estadoCivil=(solteiro,casado,viuvo,separado);
  usuario=record
    nomeCompleto,cidadeNatal,cidadeAtual,profissao:string;
    dataNascimento:tdatetime;
    codigo,numeroFilhos:integer;
    estadoCivil:estadoCivil;
  end;

var
  opcao:string;
  usuarios:array of usuario;
  numeroUsuariosExcluidos:integer;

function apenasDigitos(const str:string):boolean;
var
  i:integer;
begin
  for i:=1 to length(str) do begin
    result:=(str[i]>='0') and (str[i]<='9');
      if not result then
        break;
  end;
end;

procedure cadastrarUsuario;
var
  usr:usuario;
  str:string;
begin
  repeat
    write('FORNECA O NOME COMPLETO DO USUARIO: ');
    readln(usr.nomeCompleto);
  until length(usr.nomeCompleto)>0;

  repeat
    write('FORNECA A DATA DE NASCIMENTO DO USUARIO: ');
    readln(str);
  until length(str)>0;
  //um erro será lançado e o programa será interrompido
  //se a string fornecida não for convertível para uma data  
  usr.dataNascimento:=strToDate(str);

  repeat
    write('FORNECA A CIDADE NATAL DO USUARIO: ');
    readln(usr.cidadeNatal);
  until length(usr.cidadeNatal)>0;

  repeat
    write('FORNECA A CIDADE ATUAL DO USUARIO: ');
    readln(usr.cidadeAtual);
  until length(usr.cidadeAtual)>0;

  str:='-';
  while true do begin
    writeln('(S) SOLTEIRO');
    writeln('(C) CASADO');
    writeln('(V) VIUVO');
    writeln('(P) SEPARADO');
    write('INFORME O ESTADO CIVIL DO USUARIO: ');
    readln(str);
    if length(str)=0 then
      continue
    else
    if length(str)>1 then
      str:='-';
    case str[1] of
      's','S':begin
        usr.estadoCivil:=solteiro;
        break;
      end;
      'c','C':begin
        usr.estadoCivil:=casado;
        break;
      end;
      'v','V':begin
        usr.estadoCivil:=viuvo;
        break;
      end;
      'p','P':begin
        usr.estadoCivil:=separado;
        break;
      end;
      else
        writeln('estado civil invalido');
    end;
  end;

  repeat
    write('O USUARIO POSSUI FILHOS (S/N): ');
    readln(str);
  until (length(str)=1) and (str[1] in ['n','N','s','S']);
  usr.numeroFilhos:=0;
  if str[1] in ['s','S'] then begin
    repeat
      write('QUANTOS FILHOS O USUARIO TEM: ');
      readln(str);
    until (length(str)>0) and (apenasDigitos(str));
    usr.numeroFilhos:=strToInt(str);
  end;

  repeat
    write('FORNECA A PROFISSAO DO USUARIO: ');
    readln(usr.profissao);
  until length(usr.profissao)>0;

  setLength(usuarios,length(usuarios)+1);
  usr.codigo:=length(usuarios);
  usuarios[length(usuarios)-1]:=usr;
end;

function pesqUsr(const cod:integer;out usr:usuario):boolean;
var
  i:integer;
begin
  for i:=0 to length(usuarios)-1 do begin
    result:=usuarios[i].codigo=cod;
    if result then begin
      usr.codigo:=cod;
      usr.nomeCompleto:=usuarios[i].nomeCompleto;
      usr.dataNascimento:=usuarios[i].dataNascimento;
      usr.cidadeNatal:=usuarios[i].cidadeNatal;
      usr.cidadeAtual:=usuarios[i].cidadeAtual;
      usr.estadoCivil:=usuarios[i].estadoCivil;
      usr.numeroFilhos:=usuarios[i].numeroFilhos;
      usr.profissao:=usuarios[i].profissao;
      break;
    end;
  end;
end;

procedure pesquisarUsuario;
var
  str:string;
  cod:integer;
  usuarioEncontrado:boolean;
  usr:usuario;
begin
  repeat
    write('INFORME O CODIGO DO USUARIO: ');
    readln(str);
  until (length(str)>0) and apenasDigitos(str);
  cod:=strToInt(str);
  usuarioEncontrado:=pesqUsr(cod,usr);
  if usuarioEncontrado then begin
    writeln('USUARIO ENCONTRADO!');
    writeln('CODIGO: ',usr.codigo);
    writeln('NOME: ',usr.nomeCompleto);
    writeln('DATA NASCIMENTO: ',formatDateTime('dd/mm/yyyy',usr.dataNascimento));
    writeln('CIDADE NATAL: ',usr.cidadeNatal);
    writeln('CIDADE ATUAL: ',usr.cidadeAtual);
    case ord(usr.estadoCivil) of
      0:writeln('ESTADO CIVIL: SOLTEIRO');
      1:writeln('ESTADO CIVIL: CASADO');
      2:writeln('ESTADO CIVIL: VIUVO');
      3:writeln('ESTADO CIVIL: SEPARADO');
    end;
    writeln('NUMERO DE FILHOS: ',usr.numeroFilhos);
    writeln('PROFISSAO: ',usr.profissao);
  end else writeln('NENHUM USUARIO FOI ENCONTRADO.');
end;

procedure excluirUsuario;
var
  str:string;
  cod:integer;
  usuarioEncontrado:boolean;
  usr:usuario;
begin
  repeat
    write('INFORME O CODIGO DO USUARIO A SER EXCLUIDO: ');
    readln(str);
  until (length(str)>0) and apenasDigitos(str);
  cod:=strToInt(str);
  usuarioEncontrado:=pesqUsr(cod,usr);
  if usuarioEncontrado then begin
    usuarios[cod-1].codigo:=-1;
    inc(numeroUsuariosExcluidos);
    writeln('USUARIO EXCLUIDO COM SUCESSO.');
  end else writeln('NENHUM USUARIO COM O CODIGO FORNECIDO FOI ENCONTRADO.');
end;

procedure listarUsuarios;
var
  i:integer;
begin
  for i:=0 to length(usuarios)-1 do begin
    if usuarios[i].codigo>0 then begin
      writeln('CODIGO: ',usuarios[i].codigo);
      writeln('NOME: ',usuarios[i].nomeCompleto);
      writeln('DATA NASCIMENTO: ',formatDateTime('dd/mm/yyyy',usuarios[i].dataNascimento));
      writeln('CIDADE NATAL: ',usuarios[i].cidadeNatal);
      writeln('CIDADE ATUAL: ',usuarios[i].cidadeAtual);
      case ord(usuarios[i].estadoCivil) of
        0:writeln('ESTADO CIVIL: SOLTEIRO');
        1:writeln('ESTADO CIVIL: CASADO');
        2:writeln('ESTADO CIVIL: VIUVO');
        3:writeln('ESTADO CIVIL: SEPARADO');
      end;
      writeln('NUMERO DE FILHOS: ',usuarios[i].numeroFilhos);
      writeln('PROFISSAO: ',usuarios[i].profissao);
      writeln('--------------------------------------------------------------');
    end;
  end;
  writeln;
  writeln(length(usuarios)-numeroUsuariosExcluidos,' cadastrados.');
end;

begin
  numeroUsuariosExcluidos:=0;
  while true do begin
    writeln('(A) Cadastrar usuario');
    writeln('(B) Pesquisar usuario');
    writeln('(C) Excluir usuario');
    writeln('(D) Listar usuarios');
    writeln('(E) Sair');
    write('Escolha uma opcao: ');
    readln(opcao);
    if length(opcao)=0 then//nada foi digitado e bateu-se o <ENTER>
      continue
    else
    if length(opcao)>1 then//esperamos um caractere apenas
      opcao:='-';//e especificamos uma opcao invalida se a string possui mais de um caractere
    case opcao[1] of
      'a','A':
        cadastrarUsuario;
      'b','B':
        pesquisarUsuario;
      'c','C':
        excluirUsuario;
      'd','D':
        listarUsuarios;
      'e','E':
        break;
      else
        writeln('opcao invalida');
    end;
    writeln;
  end;
end.
 