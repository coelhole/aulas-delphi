{
  EXEMPLOS DE USO DA FUN��O FORMAT:
  function format(const formato:string; const argumentos:array of const):string;

  formato geral da string de formata��o:
  %[indice:][-][largura][.precisao]tipo
}

program FuncaoFormat;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  n:byte;
  ano:smallint;

begin
  // um item apenas
  writeln(format('%s', ['Hello']));

  // uma combina��o de texto literal mais um item
  writeln(format('%s World!', ['Hello']));

  // uma combina��o de texto literal mais dois itens
  writeln(format('%s %s!', ['Hello','World']));

  // uma combina��o de texto literal com v�rios itens
  writeln(format('Eu, %s, natural de %s, %d anos, %s, domiciliado na cidade de %s, inscrito no CPF sob o numero %s, portador do Registro Geral %s, autorizo a inclusao do valor %m na minha fatura de energia.',
  ['Jonas Pereira da Silva', 'Londrina/PR', 44, 'solteiro', 'Umuarama/PR', '319.969.980-48', '9.345.239-5', 49.77]));

  // um outro exemplo
  ano:=1945;
  writeln(format('%s nasceu em %d/%d/%d na cidade de %s, %s, %s.',['Lula',27,10,ano,'Garanhuns','PE', 'Brasil']));

  // imprime uma tabela contendo as representa��es decimal e hexadecimal dos inteiros de 0 a 255
  writeln('DEC',#9,'HEX');
  for n:=0 to 255 do
    writeln(format('%d'+#9+'%x',[n,n]));

  // o valor da largura, indicado entre '%' e 'd',
  // informa o n�mero total de posi��es que a sa�da deve ocupar
  // se for menor do que a quantidade de posi��es que o n�mero requer, � ignorado
  // se for maior, espa�os em branco s�o inseridos � esquerda at� completar a largura fornecida
  writeln(format('<%7d> (inteiro com espacos a esquerda)', [1234]));

  //veja que a largura se aplica a qualquer tipo de item, isto �, strings e n�meros reais tamb�m
  writeln(format('<%7s> (string com espacos a esquerda)',['Hello']));

  // para justificar o texto, isto �, inserir espa�os � direita
  // informe a largura pretendida com um sinal '-' na frente
  writeln(format('<%-7d> (inteiro com espacos a direita)', [1234]));

  // mesma coisa para outros tipos de itens
  writeln(format('<%-7s> (string com espacos a direita)',['Hello']));

  // o caractere '.' � usado para indicar a precis�o, isto �, o n�mero de casas usadas
  // o inteiro ap�s o caractere '.' � o n�mero total de casas que se quer
  // se o inteiro de interesse possuir mais casas do que a precis�o fornecida, a precis�o � ignorada
  // em caso contr�rio, 0s s�o adicionados � esquerda at� completar a precis�o
  writeln(format('<%.6d> (inteiro com zeros a esquerda)', [1234])); // imprimir� 001234

  // largura e precis�o podem ser combinadas
  // o valor da largura precede o valor da precis�o
  writeln(format('<%8.6d> (largura + precisao)', [1234]));


  //tipo e (cient�fico)
  writeln('format(''<%e>'',[3.141]) => ' + format('<%e>',[3.141]));
  writeln('format(''<%.0e>'',[3.141]) => ' + format('<%.0e>',[3.141]));
  writeln('format(''<%.1e>'',[3.141]) => ',#9,format('<%.1e>',[3.141]));
  writeln('format(''<%.2e>'',[3.141]) => ',#9,format('<%.2e>',[3.141]));
  writeln('format(''<%.3e>'',[3.141]) => ',#9,format('<%.3e>',[3.141]));
  writeln('format(''<%.4e>'',[3.141]) => ',#9,format('<%.4e>',[3.141]));
  writeln('format(''<%.5e>'',[3.141]) => ',#9,format('<%.5e>',[3.141]));


  //tipo f (fixo)
  writeln('format(''<%f>'',[3.141]) => ' + format('<%f>',[3.141]));
  writeln('format(''<%.0f>'',[3.141]) => ' + format('<%.0f>',[3.141]));
  writeln('format(''<%.1f>'',[3.141]) => ' + format('<%.1f>',[3.141]));
  writeln('format(''<%.2f>'',[3.141]) => ' + format('<%.2f>',[3.141]));
  writeln('format(''<%.3f>'',[3.141]) => ' + format('<%.3f>',[3.141]));
  writeln('format(''<%.4f>'',[3.141]) => ' + format('<%.4f>',[3.141]));
  writeln('format(''<%.5f>'',[3.141]) => ' + format('<%.5f>',[3.141]));


  //tipo g (geral)
  writeln('format(''<%g>'',[3.141]) => ' + format('<%g>',[3.141]));
  writeln('format(''<%.0g>'',[3.141]) => ' + format('<%.0g>',[3.141]));
  writeln('format(''<%.1g>'',[3.141]) => ' + format('<%.1g>',[3.141]));
  writeln('format(''<%.2g>'',[3.141]) => ' + format('<%.2g>',[3.141]));
  writeln('format(''<%.3g>'',[3.141]) => ' + format('<%.3g>',[3.141]));
  writeln('format(''<%.4g>'',[3.141]) => ' + format('<%.4g>',[3.141]));
  writeln('format(''<%.5g>'',[3.141]) => ' + format('<%.5g>',[3.141]));


  //tipo n (n�mero)
  writeln('format(''<%n>'',[3.141]) => ' + format('<%n>',[3.141]));
  writeln('format(''<%.0n>'',[3.141]) => ' + format('<%.0n>',[3.141]));
  writeln('format(''<%.1n>'',[3.141]) => ' + format('<%.1n>',[3.141]));
  writeln('format(''<%.2n>'',[3.141]) => ' + format('<%.2n>',[3.141]));
  writeln('format(''<%.3n>'',[3.141]) => ' + format('<%.3n>',[3.141]));
  writeln('format(''<%.4n>'',[3.141]) => ' + format('<%.4n>',[3.141]));
  writeln('format(''<%.5n>'',[3.141]) => ' + format('<%.5n>',[3.141]));


  // o valor do �ndice permite que o pr�ximo valor do array de dados a ser exibido seja trocado
  writeln(format('volta ao primeiro valor apos 3 strings = %s %s %s %1:s %s',
                     ['zero', 'um', 'dois', 'tres']));
  writeln(format('volta ao segundo valor apos 3 strings = %s %s %s %2:s %s',
                     ['zero', 'um', 'dois', 'tres']));



  //para escrever o caractere especial % dentro da string de formata��o, dobre-o
  writeln(format('%%%s',['teste']));
  writeln(format('%s fez um investimento e teve um lucro de %d%%.',['Carlos',72]));




  //para saber mais sobre a fun��o format, acesse
  //http://www.delphibasics.co.uk/RTL.php?Name=format
  //https://docwiki.embarcadero.com/Libraries/Sydney/en/System.SysUtils.Format



  readln;
end.
