class Edad

  #Escribe un programa para la consola que le pregunte al usuario el año en que nació e imprima su edad actual.
  def get_edad(born_year)
    current_age = Time.now.year - born_year

    if current_age >= 120 || current_age < 0
      return "Nadie puede tener esa edad"
    else
      text =  current_age > 1 ? "años" : "año"
      return "Tu edad es #{current_age} #{text}"
    end
  end
end
