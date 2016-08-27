require 'rails_helper'

feature 'User searchs for a card' do
  scenario 'successfully in EN' do
    card = Card.create(front: 'Procura', back: 'Search', author: 'Gio')
    visit cards_path
    fill_in 'Procurar card:', with: 'Search'
    click_on 'Procurar'

    expect(page).to have_content 'pt: Procura -> en: Search'
  end
  scenario 'successfully in PT' do
    card = Card.create(front: 'Procura', back: 'Search', author: 'Gio')
    visit cards_path
    fill_in 'Procurar card:', with: 'Procura'
    click_on 'Procurar'

    expect(page).to have_content 'pt: Procura -> en: Search'
  end

end
