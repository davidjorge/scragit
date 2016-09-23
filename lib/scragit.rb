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

  def coincidencias(palabra,letra)
    if(palabra[0]==letra)
      "s _ _ _ _"
    end
    
  end
end
