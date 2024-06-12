class ChangeFrase

  # toma la oración "hola mundo que pasa" y retorna toda la oración en mayuscula
  # excepto la primera letra de cada palabra que debe estar en minuscula

  def get_frase(input)
    input = input.split( " ")
    input = input.map {|i| i.upcase}
    input = input.map {|i| i[0].downcase + i[1..] }
    input = input.join(" ")
    input
  end
end
