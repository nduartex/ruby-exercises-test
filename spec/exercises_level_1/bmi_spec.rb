require 'rails_helper'

RSpec.describe BMI, type: :request do
  describe '#get_bmi' do
    it 'returns "Tu BMI es 18.5 y tu rango es Normal" for a BMI of 18.5' do
      expect(subject.get_bmi(65, 1.75)).to eq('Tu BMI es 21.2 y tu rango es Normal')
    end

    it 'returns "Tu BMI es 25.0 y tu rango es Sobrepeso" for a BMI of 25.0' do
      expect(subject.get_bmi(80, 1.75)).to eq('Tu BMI es 26.1 y tu rango es Sobrepeso')
    end

    it 'returns "Tu BMI es 30.0 y tu rango es Obesidad grado 1" for a BMI of 30.0' do
      expect(subject.get_bmi(95, 1.75)).to eq('Tu BMI es 31.0 y tu rango es Obesidad grado 1')
    end

    it 'returns "Tu BMI es 35.0 y tu rango es Obesidad grado 2" for a BMI of 35.0' do
      expect(subject.get_bmi(110, 1.75)).to eq('Tu BMI es 35.9 y tu rango es Obesidad grado 2')
    end

    it 'returns "Tu BMI es 40.0 y tu rango es Obesidad grado 3" for a BMI of 40.0' do
      expect(subject.get_bmi(125, 1.75)).to eq('Tu BMI es 40.8 y tu rango es Obesidad grado 3')
    end

    it 'returns "Error, valores no válidos"' do
      expect(subject.get_bmi(0, 1.75)).to eq('Error, valores no válidos')
    end
  end
end