class Escalera
  #Escribe un programa para la consola que le pida al usuario un número y cree una escalera como en el siguiente ejemplo:
  # Ingresa un número: 5
  # #
  # ##
  # ###
  # ####
  # #####

  def get_escalera(value)
    value.times do |i|
      puts "#" * (i + 1)
    end
  end
end
