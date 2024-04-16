class Generacion

  #Escribe un programa para la consola que le pida al usuario su año de nacimiento e imprima la generación a la que pertenece:
  #
  # "Gran generación" si el año es menor a 1945
  # "Baby boomer" si es entre 1945 y 1964
  # "X" si es entre 1965 y 1981
  # "Millenial" si es entre 1982 y 1994
  # "Z" si es igual o mayor a 1995

  def get_generacion(year)
    case year
    when ..1944
      "Gran generación"
    when 1945..1964
      "Baby boomers"
    when 1965..1981
      "Generación X"
    when 1982..1994
      "Millenial"
    when 1995..Float::INFINITY
      "Generación Z"
    else
      "No se puede determinar la generación"
    end
  end
end
