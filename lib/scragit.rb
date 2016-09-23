class Scragit
  attr_accessor :palabra
  attr_accessor :guiones
  attr_accessor :palabraGuiones
  attr_accessor :intentos
  attr_accessor :contador

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
      coincidencia = false
      contador = 0
      palabraArray=["s","c","r","u","m"]
      
      palabraArray.each_with_index {|item, index|
        if(item==letra) 
        	@palabraGuiones[index]=letra
          contador = contador + 1
          coincidencia = true
        end
      }
      
      if(coincidencia == false)
        descontar_intento()
      end
      @guiones = @palabraGuiones.join(" ");	
      @contador = contador
      return @guiones
  end
  
 def haGanado
 	return @palabraGuiones.join("")== @palabra
           
 end

end
