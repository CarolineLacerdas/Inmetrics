# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^que eu acesse o site da OrangeHRM$/) do
  visit "https://enterprise-demo.orangehrmlive.com"
end

Quando(/^eu preencher os campos de login com dados invalidos$/) do
  fill_in 'txtUsername', :with=> "peter.mac"
  fill_in 'txtPassword', :with=> "peter"
end

E(/^clicar no botao Login$/) do
  click_button "LOGIN"
end

Então(/^o login não deve ser realizado com sucesso$/) do
  page.has_content?("Retry Login")
end

Dado(/^que eu esteja na pagina de login do site da OrangeHRM$/) do
  visit "https://enterprise-demo.orangehrmlive.com/securityAuthentication/retryLogin"
end

Quando(/^eu preencher os campos de login com dados validos$/) do
  fill_in 'txtUsername', :with=> "peter.mac"
  fill_in 'txtPassword', :with=> "peter.mac"
end

E(/^clicar novamente no botao Login$/) do
  click_button "LOGIN"
end

Então(/^o login deve ser realizado com sucesso$/) do
  page.has_content?("Welcome Peter")
end