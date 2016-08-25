require 'rails_helper'

feature 'User vists a card' do
  scenario 'successfully' do
    #setup
    card = Card.create(front: 'Com sucesso', back: 'successfully')
    #scenario
    visit card_path(card)
    #expectations
    expect(page).to have_content 'pt: Com sucesso -> en: successfully'
  end
end
