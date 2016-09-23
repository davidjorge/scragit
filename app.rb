require 'sinatra'
require './lib/scragit'

get '/' do
    @titulo = "Juego Ahorcalo"
    scragit = Scragit.new
    scragit.generar_palabra()
    @palabra = scragit.palabra
    @guiones = scragit.generar_guiones()
    @sub_titulo = "Adivina la Palabra"
    erb :index
end
