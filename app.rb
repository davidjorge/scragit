require 'sinatra'
require './lib/scragit'


get '/' do
    @@coincidencia = ""
    @@titulo = "Juego Ahorcalo"
    @@scragit = Scragit.new
    @@scragit.generar_palabra()
    @@palabra = @@scragit.palabra
    @@guiones = @@scragit.generar_guiones()
    @@sub_titulo = "Adivina la Palabra"
    @@intentos = 5
    erb :index
end

post "/" do
  @letraRecibida=params[:inputLetra]
  @@guiones= @@scragit.coincidencias(@@palabra,@letraRecibida)
  @@coincidencia = @@scragit.contador
  @@intentos = @@scragit.intentos
  erb :index

end

