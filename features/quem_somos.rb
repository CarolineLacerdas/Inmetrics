# encoding: utf-8
# !/usr/bin/env ruby

Dado(/^que eu acesse o site da Inmetrics$/) do
  visit "http://www.inmetrics.com.br"
end

Quando(/^eu clicar em Quem Somos$/) do
  find(:xpath, "//html/body/div[1]/div[1]/div[3]/div[1]/div[4]/div[1]/div[2]/ul[1]/li[5]/a").click
end

Então(/^devo ver o texto MAIS DE 15 ANOS DE ATUAÇÃO$/) do
  page.has_content?("mais de 15 anos de atuação")
end