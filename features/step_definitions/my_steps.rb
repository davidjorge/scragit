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

