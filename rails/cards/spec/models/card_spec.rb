require 'rails_helper'

describe Card do
  describe '#friendly_description' do
    it "mostrar descrição amigável com olá e hello" do
      card = Card.new(front:'olá', back:'hello')

      expect(card.friendly_description).to eq 'pt: olá -> en: hello'
    end

    it "mostrar descrição amigável com porta e door" do
      card = Card.new(front:'porta', back:'door')
      expect(card.friendly_description).to eq 'pt: porta -> en: door'
    end
  end
end
