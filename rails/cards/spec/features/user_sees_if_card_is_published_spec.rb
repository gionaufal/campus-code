require 'rails_helper'

feature 'User sees if card is published' do
  scenario 'successfully published' do
    visit new_card_path
    fill_in 'Português', with: 'Português'
    fill_in 'Inglês', with: 'Portuguese'
    check 'Publicado'
    click_on 'Enviar'

    expect(page).to have_content 'Publicado? true'
  end

  scenario 'successfully unpublished' do
    visit new_card_path
    fill_in 'Português', with: 'Inglês'
    fill_in 'Inglês', with: 'English'
    click_on 'Enviar'

    expect(page).to have_content 'Você não deveria estar vendo isso!'
  end
end
