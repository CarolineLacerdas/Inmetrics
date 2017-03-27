# language: pt

Funcionalidade: Login em OrangeHRM

Cenario: Logar sem sucesso no site OrangeHRM

  Dado que eu acesse o site da OrangeHRM
  Quando eu preencher os campos de login com dados invalidos
  E clicar no botao Login
  Então o login não deve ser realizado
  
Cenario: Logar com sucesso no site OrangeHRM

  Dado que eu esteja na pagina de login do site da OrangeHRM
  Quando eu preencher os campos de login com dados validos
  E clicar novamente no botao Login
  Então o login deve ser realizado com sucesso

