class Scragit
  attr_accessor :palabra
  attr_accessor :guiones
  attr_accessor :intentos

  def initialize 
  	generar_palabra
    @intentos = 5
  end

  def descontar_intento()
    @intentos = @intentos - 1
  end

  def generar_palabra
    @palabra = "scrum"
    @palabraGuiones=["_","_","_","_","_"]
  end

  def generar_guiones
    @guiones = "_ " * @palabra.length
    @guiones = @guiones.rstrip
  end

  def coincidencias(palabra,letra)

      palabraArray=["s","c","r","u","m"]
            

      palabraArray.each_with_index {|item, index|
        if(item==letra) 
        	@palabraGuiones[index]=letra
        end
      }
      return @palabraGuiones.join(" ");	
  end
end
