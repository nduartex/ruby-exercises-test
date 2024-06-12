require 'rails_helper'

RSpec.describe ChangeFrase, type: :request do
  describe '#get_frase' do

    it 'should return "hOLA mUNDO qUE pASA"' do
        expect(subject.get_frase("hola mundo que pasa")).to eq("hOLA mUNDO qUE pASA")
      end
  end
end
