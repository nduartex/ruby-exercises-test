class Traductor
  #Escribe un programa que traduzca los números del uno al diez de español a inglés.
  # Si es cualquier otra palabra deberá imprimir "No encontramos la traducción de " seguido de la palabra que escribió el usuario.

  def get_traduccion(value)
    dictionary = {
      "uno" => "one",
      "dos" => "two",
      "tres" => "three",
      "cuatro" => "four",
      "cinco" => "five",
      "seis" => "six",
      "siete" => "seven",
      "ocho" => "eight",
      "nueve" => "nine",
      "diez" => "ten"
    }

    dictionary[value] ? "La traducción es: #{dictionary[value]}" : "No encontramos la traducción de #{value}"
  end
end
