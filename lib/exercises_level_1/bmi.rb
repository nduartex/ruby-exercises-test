class BMI

  # El índice de masa corporal (IMC), o BMI por sus siglas en inglés, es un valor que determina la cantidad de grasa de una persona.
  #
  # El BMI se calcula con la siguiente formula:
  #
  # peso / altura^2

  def get_bmi(weight, height)
    bmi = (weight / (height * height)).round(1)

    range = case bmi
            when 1..18.4
              "Bajo peso"
            when 18.5..24.9
              "Normal"
            when 25..29.9
              "Sobrepeso"
            when 30..34.9
              "Obesidad grado 1"
            when 35..39.9
              "Obesidad grado 2"
            when 40..Float::INFINITY
              "Obesidad grado 3"
            else
              return "Error, valores no válidos"
            end

    return "Tu BMI es #{bmi} y tu rango es #{range}"
  end
end
