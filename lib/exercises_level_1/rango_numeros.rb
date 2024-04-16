class RangoNumeros
  #Escribe un programa para la consola que le pida al usuario dos números e imprima los números en ese rango. Por ejemplo:

  def get_rango_numeros(value_a, value_b)
    range = value_a..value_b
    range.each do |i|
      puts i
    end
  end
end
