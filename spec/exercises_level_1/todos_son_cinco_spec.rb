require 'rails_helper'

RSpec.describe TodosSonCinco, type: :request do
  describe '#todos_son_cinco?' do

    it 'returns true if all elements are 5' do
      expect(subject.todos_son_cinco?([5, 5, 5, 5, 5])).to be_truthy
    end

    it 'returns false if at least one element is not 5' do
      expect(subject.todos_son_cinco?([5, 5, 5, 5, 4])).to be_falsey
    end

    it 'returns error if input is not array' do
      expect { subject.todos_son_cinco?('5, 5, 5, 5, 5') }.to raise_error(NoMethodError)
    end
  end
end
