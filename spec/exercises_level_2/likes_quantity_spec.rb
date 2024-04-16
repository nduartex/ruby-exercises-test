require 'rails_helper'

RSpec.describe LikesQuantity, type: :request do
  describe '#calculate_likes' do

    it 'should returns "100" for an input value of 100' do
      expect(subject.calculate_likes(100)).to eq('100')
    end

    it 'should returns "1K" for an input value of 1000' do
      expect(subject.calculate_likes(1000)).to eq('1K')
    end

    it 'should returns "2K" for an input value of 1400' do
      expect(subject.calculate_likes(1400)).to eq('1K')
    end

    it 'should returns "34K" for an input value of 34567' do
      expect(subject.calculate_likes(34567)).to eq('35K')
    end

    it 'should returns "7M" for an input value of 7456345' do
      expect(subject.calculate_likes(7456345)).to eq('7M')
    end

    it 'should return errors' do
      expect { subject.calculate_likes(nil) }.to raise_error(NoMethodError)
    end
  end
end
