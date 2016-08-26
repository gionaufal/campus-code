require 'rails_helper'

feature 'User comments a card' do
  scenario 'successfully' do
    card = Card.create(front: 'Livro', back: 'Book', author: 'Gio')
    visit card_path(card)
    fill_in "Autor", with: 'Lol'
    fill_in 'Comentário', with: 'Great card!'
    click_on 'Comentar'
    expect(page).to have_content 'pt: Livro -> en: Book'
    expect(page).to have_content 'Lol comentou: Great card!'
  end
end
