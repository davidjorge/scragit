require './lib/scragit'

describe 'scragit' do
  it 'Generar palabra' do
    scragit = Scragit.new
    scragit.generar_palabra()
    palabra = scragit.palabra
    expect(palabra).to be == "scrum"
  end

end
