#ProjetoSky

Utilizei o Delphi 10.2 e o Firebird 2.5.

Eu criei o database via IBExpert 2015, fiz a ligação do banco via componente Firedac(Escolhi o firedac devido as pesquisas que eu fiz, onde ele teria um bom
desempenho junto ao banco firebird).

Username = SYSDBA
Senha = masterkey
Caminho do arquivo = C:\ProjetoSky\ProjetoSky\DB\DB.FDB

Foi criado um menu principal onde foi feita uma barra de ferramentas, onde ficam as telas de cadastros, consulta, relatório e tela não CRUD.

Nas telas de cadastro temos a grid e os botões que chamam as ações conforme o botão selecionado. Fiz um controle destes botões para não gerar erro em tela.

Na tela de ordem eu fiz duas abas: em uma tela tem a grid com os campos da ordem e na outra uma grid para informar os itens e quantidades da mesma e, com isso, efetuar o cálculo total da ordem.

Já na tela de relatório e consulta, elas são basicamente a mesma tela, mas uma tem uma grid e a outra tem 3 botões: um para imprimir o arquivo via FastReport, chamando a mesma biblioteca; um botão que exporta em CSV; e um botão para PDF.

A tela não CRUD chama um procedimento onde o parâmetro é um cliente, no qual ele vai validar todos os SLAs daquele cliente selecionado.

Eu infelizmente não consegui instalar o DevExpress devido à licença do mesmo, e com isso as grids ficaram bem limitadas.
Acabei não vendo a solicitação de um DM para cada tela e fiquei com receio de mexer no principal e não funcionar depois.

Se eu tivesse mais 20 horas, eu faria o relatório mais detalhado, com o agrupamento por status, e criaria mais telas não CRUD para ter outras formas de processar os SLAs.

As telas são bem limitadas em questão de layout, como eu tive que começar elas do zero sem nenhuma herança ou template, acredito que isso demandou demais do tempo de desenvolvimento.

Eu fiz o uso de IAs para fazer um tratamento nos campos de data: conforme o usuário digita a data, ele coloca as "/". Normalmente temos um componente pronto de data que já faz isso, daí por isso acabei buscando.
Também utilizei IA para alguns erros na criação do procedimento, pois nunca tinha utilizado essa IDE e nem o Firebird.