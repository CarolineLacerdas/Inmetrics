# language: pt

Funcionalidade: Login em OrangeHRM

Cenario: Adicionar Disciplinary Case

  Dado que eu esteja na pagina inicial do site da OrangeHRM
  Quando eu clicar em Discpline
  E clicar em Add
  E preencher os campor com dados validos
  E clicar no botao Save
  Então os dados devem ser incluidos

Cenario: Verificar se a nota foi concluida com sucesso

  Dado que eu esteja no site da OrangeHRM
  Então os dados incluidos devem ser vistos