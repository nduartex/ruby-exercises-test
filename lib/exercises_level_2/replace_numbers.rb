class ReplaceNumbers
  #Escribe un método llamado reemplazar que reciba un arreglo y reemplace todos los elementos que sean un 1 por un 0 y lo contrario, todos los elementos que sean 0 por 1.

  def set_replace_numbers(array)
    array.each_with_index do |element, index|
      if element == 1
        array[index] = 0
      elsif element == 0
        array[index] = 1
      end
    end
    return array
  end

  def set_replace_numbers_map(array)
    array.map do |element|
      if element == 1
        0
      elsif element == 0
        1
      else
        element
      end
    end
  end
end
