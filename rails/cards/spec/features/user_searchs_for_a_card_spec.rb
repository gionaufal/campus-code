require 'rails_helper'

feature 'User searchs for a card' do
  scenario 'successfully' do
    card = Card.create(front: 'Procura', back: 'Search', author: 'Gio')
    visit root_path
    fill_in 'Procurar card:', with: 'Search'
    click_on 'Procurar'

    expect(page).to have_content 'pt: Procura -> en: Search'
  end
end
