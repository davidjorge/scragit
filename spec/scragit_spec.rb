require './lib/scragit'

describe 'scragit' do
  it 'Generar palabra' do
    scragit = Scragit.new
    scragit.generar_palabra()
    palabra = scragit.palabra
    expect(palabra).to be == "scrum"
  end

  it 'Generar guiones' do
    scragit = Scragit.new
    scragit.generar_palabra()
    scragit.generar_guiones()
    guiones = scragit.guiones
    expect(guiones).to be == "_ _ _ _ _"
  end  

  it 'Buscar coincidencia s' do
    scragit = Scragit.new
    coincidencias = scragit.coincidencias("scrum","s")
    expect(coincidencias).to be == "s _ _ _ _"
  end

  it 'Buscar coincidencia a' do
    scragit = Scragit.new
    coincidencias = scragit.coincidencias("scrum","a")
    expect(coincidencias).to be == "_ _ _ _ _"
  end

  it 'Inicializar intentos' do
    scragit = Scragit.new
    intentos = scragit.intentos
    expect(intentos).to be == 5
  end

  it 'Descontar intentos' do
    scragit = Scragit.new
    scragit.descontar_intento()
    intentos = scragit.intentos
    expect(intentos).to be == 4
  end

end
