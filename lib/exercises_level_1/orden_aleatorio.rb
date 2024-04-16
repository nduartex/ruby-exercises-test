class OrdenAleatorio
  #Escribe un programa que permita al usuario ingresar una lista de nombres y los mezcle de forma aleatoria.
  #
  # El programa deberá preguntar primero cuál es el número de personas que se quiere ingresar.
  # Luego le va preguntando por el nombre de cada persona y las va almacenando en un arreglo.
  # Al final muestra la lista de personas ordenadas de forma aleatoria. Por ejemplo:

  def get_aleatorio_names(name_1, name_2, name_3, name_4)
    names = []
    names.push(name_1, name_2, name_3, name_4)
    names.shuffle.each do |name|
      puts name
    end
  end
end
