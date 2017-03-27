# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^que eu esteja na pagina inicial do site da OrangeHRM$/) do
  visit "https://enterprise-demo.orangehrmlive.com/dashboard"
end

Quando(/^eu clicar em Discpline$/) do
  click_link ("Discipline")
end

E(/^clicar em Add$/) do
  click_button ("Add")
end

E(/^preencher os campor com dados validos$/) do
  fill_in 'addCase[employeeName][empName]', :with=> "Melan Peiris"
  fill_in 'addCase[caseName]', :with=> "Teste"
end

E(/^clicar no botao Save$/) do
  click_button ("Save")
end

Então(/^os dados devem ser incluidos$/) do
  page.has_content?("Successfully Saved")
end

Dado(/^que eu esteja no site da OrangeHRM$/) do
  visit "https://enterprise-demo.orangehrmlive.com/discipline/viewDisciplinaryCases"
end

Então(/^o login deve ser realizado com sucesso$/) do
  find(:xpath, "//html/body/div[1]/div[3]/div[1]/div[2]/form[1]/div[4]/table[1]/tbody[1]/tr[1]/td[2][contains(., "Melan Peiris")]")
  find(:xpath, "//html/body/div[1]/div[3]/div[1]/div[2]/form[1]/div[4]/table[1]/tbody[1]/tr[1]/td[3]/a[1][contains(., "Teste")]")
  find(:xpath, "//html/body/div[1]/div[3]/div[1]/div[2]/form[1]/div[4]/table[1]/tbody[1]/tr[1]/td[5][contains(., "Peter Mac Anderson")]")
end