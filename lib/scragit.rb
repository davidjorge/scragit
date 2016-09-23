class Scragit
  attr_accessor :palabra
  attr_accessor :guiones
  attr_accessor :palabraGuiones

  def initialize 
  	generar_palabra
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
  
 def haGanado
 	return @palabraGuiones.join("")== @palabra
           
 end

end
