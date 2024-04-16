class Multiplo
  #Un múltiplo de 5 es aquel que dividio por 5 da por resultado un número entero (sin residuo). Por ejemplo 10, 15, 20, etc. son múltiplos de 5. 11 no es múltiplo de 5 porque quedaría un residuo de 1.
  #
  # Escribe un programa que le pida al usuario un número e imprima si es un múltiplo de 5 o no. Si es múltiplo debe imprimir "Si, el número x es múltiplo 5", de lo contrario debe imprimir "No, el número x no es múltiplo de 5". Por ejemplo:

  def get_multiplo(value)
    divisor = value
    dividendo = 5

    divisor % dividendo == 0 ? "El número #{divisor} es múltiplo de #{dividendo}" : "El número #{divisor} no es múltiplo de #{dividendo}"
  end
end
