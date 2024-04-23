require 'rails_helper'

RSpec.describe CountElement, type: :request do
  describe '#count_element_automatic' do
    context 'when the element is in the array' do
      it 'should return 3' do
        expect(subject.count_element_automatic([1, 2, 3, 3, 3, 4], 3)).to eq(3)
      end
    end

    context 'when the element is not in the array' do
      it 'should return 0' do
        expect(subject.count_element_automatic([1, 2, 3, 3, 3, 4], 5)).to eq(0)
      end
    end

    context 'when the array is empty' do
      it 'should return 0' do
        expect(subject.count_element_automatic([], 5)).to eq(0)
      end
    end

    context 'when the array is nil' do
      it 'should raise error' do
        expect { subject.count_element_automatic(nil, 5) }.to raise_error(NoMethodError)
      end
    end

  end

  describe '#count_element_manual' do
    context 'when the element is in the array' do
      it 'should return 5' do
        expect(subject.count_element_manual([1, 3, 3, 3, 3, 3], 3)).to eq(5)
      end
    end

    context 'when the element is not in the array' do
      it 'should return 0' do
        expect(subject.count_element_manual([1, 2, 3, 3, 3, 4], 5)).to eq(0)
      end
    end

    context 'when the array is empty' do
      it 'should return 0' do
        expect(subject.count_element_manual([], 5)).to eq(0)
      end
    end

    context 'when the array is nil' do
      it 'should raise error' do
        expect { subject.count_element_manual(nil, 5) }.to raise_error(NoMethodError)
      end
    end
  end
end
