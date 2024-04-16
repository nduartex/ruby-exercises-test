class LikesQuantity
  #Escribe un método llamado numero_de_likes que reciba un número y devuelva una cadena utilizando el formato de K para miles y M
  # para millones (p.e. 1400 se convierte en 1K, 34,567 se convierte en 34K, 7'456,345 se convierte en 7M).
  # Si el número es menor a 1000 se debe devolver el mismo número como una cadena.

  def calculate_likes(value)
    if value < 1000
      return value.to_s
    elsif value < 1000000
      return (value.to_f / 1000).round(0).to_s + "K"
    else
      return (value.to_f / 1000000).round(0).to_s + "M"
    end
  end
end
