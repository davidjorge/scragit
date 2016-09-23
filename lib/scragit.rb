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

      palabraArray=["s","c","r","u","m"]
      palabraGuiones=["_","_","_","_","_"]      

      palabraArray.each_with_index {|item, index|
        if(item==letra) 
        	palabraGuiones[index]=letra
        end
      }
      palabraGuiones.join(" ");	
  end
end
