class TodosSonCinco
  #Escribe un método llamado todos_son_5 que reciba un arreglo y devuelva true si todos los elementos son el número 5.
  # Si hay al menos un elemento que no es 5 deberá retornar false.

  def todos_son_cinco?(array)
    array.all?(5)
  end
end
