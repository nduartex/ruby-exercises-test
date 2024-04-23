require 'rails_helper'

RSpec.describe ReplaceNumbers, type: :request do
  describe '#set_replace_numbers' do

    it 'should returns [0, 1, 0, 1, 0] for an input value of [1, 0, 1, 0, 1]' do
      expect(subject.set_replace_numbers([1, 0, 1, 0, 1])).to eq([0, 1, 0, 1, 0])
    end

    it 'should returns [1, 0, 1, 0, 1] for an input value of [0, 1, 0, 1, 0]' do
      expect(subject.set_replace_numbers([0, 1, 0, 1, 0])).to eq([1, 0, 1, 0, 1])
    end

    it 'should returns [0, 1, 0, 1, 0] for an input value of [1, 0, 1, 0, 1]' do
      expect(subject.set_replace_numbers_map([1, 0, 1, 0, 1])).to eq([0, 1, 0, 1, 0])
    end

    it 'should returns [1, 0, 1, 0, 1] for an input value of [0, 1, 0, 1, 0]' do
      expect(subject.set_replace_numbers_map([0, 1, 0, 1, 0])).to eq([1, 0, 1, 0, 1])
    end

    it 'should returns [1, 0, 1, 0, 2] for an input value of [0, 1, 0, 1, 0]' do
      expect(subject.set_replace_numbers_map([0, 1, 0, 1, 2])).to eq([1, 0, 1, 0, 2])
    end

    it 'should raise an error' do
      expect { subject.set_replace_numbers(nil) }.to raise_error(NoMethodError)
    end
  end
end
