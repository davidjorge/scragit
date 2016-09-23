require 'sinatra'
require './lib/scragit'

get '/' do
    @titulo = "Juego Ahorcalo"
    erb :index
end

get '/genera-palabra' do
    scragit = Scragit.new
    scragit.generar_palabra()
    @palabra = scragit.palabra
    @sub_titulo = "Adivina la Palabra"
    erb :index
end

get '/genera-palabra-scrum' do
    scragit = Scragit.new
    scragit.generar_palabra()
    @palabra = scragit.palabra
    @guiones = "_ _ _ _ _"
    erb :index
end
