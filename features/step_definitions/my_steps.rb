When(/^inicia el juego$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |frase|
  last_response.body.should =~ /#{frase}/m
end

When(/^genera palabra$/) do
  visit '/'
end

When(/^genera palabra "(.*?)"$/) do |palabra|
  visit '/'
end

When(/^ingresa la letra "(.*?)"$/) do |letra|
  fill_in("inputLetra", :with => letra)
end

When(/^presiona el botón "(.*?)"$/) do |botonName|
  click_button(botonName)
end

Then(/^debo ver recibi "(.*?)"$/) do |letra|
  last_response.body.should =~ /#{letra}/m
end

Given(/^Se tienen "(.*?)"$/) do |intentos|
  last_response.body.should =~ /#{intentos}/m
end

When(/^numero de coincidencias es "(.*?)"$/) do |coincidencia|
  last_response.body.should =~ /#{coincidencia}/m
end


