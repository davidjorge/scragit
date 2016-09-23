class Scragit
  attr_accessor :palabra
  attr_accessor :guiones

  def generar_palabra
    @palabra = "scrum"
  end

  def generar_guiones
    @guiones = "_ " * @palabra.length
    @guiones = @guiones.rstrip
  end
end
