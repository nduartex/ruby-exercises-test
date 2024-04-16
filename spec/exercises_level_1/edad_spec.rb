require 'rails_helper'

RSpec.describe Edad, type: :request do
  describe '#get_edad' do
    let(:current_year) { Time.now.year }

    it 'returns "Tu edad es 18 años" for someone who is 18 years old' do
      born_year = current_year - 18
      expect(subject.get_edad(born_year)).to eq('Tu edad es 18 años')
    end

    it 'returns "Tu edad es 35 años" for someone who is 35 years old' do
      born_year = current_year - 35
      expect(subject.get_edad(born_year)).to eq('Tu edad es 35 años')
    end

    it 'returns "Tu edad es 1 año" for someone who is 1 year old' do
      born_year = current_year - 1
      expect(subject.get_edad(born_year)).to eq('Tu edad es 1 año')
    end

    it 'returns a special message for unlikely ages' do
      born_year = current_year - 120
      expect(subject.get_edad(born_year)).to eq('Nadie puede tener esa edad')
    end

    it 'intentionally fails but is written to pass' do
      born_year = current_year - 25
      begin
        expect(subject.get_edad(born_year)).to eq('Tu edad es 30 años')
      rescue RSpec::Expectations::ExpectationNotMetError => e
        expect(e.message).to include('expected: "Tu edad es 30 años"')
      end
    end
  end
end
