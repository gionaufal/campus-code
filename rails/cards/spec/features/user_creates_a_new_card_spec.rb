require 'rails_helper'

feature 'User creates a new card' do
  scenario 'successfully' do
    visit new_card_path

    fill_in 'Português', with: 'Rede sem fio'
    fill_in 'Inglês', with: 'WiFi'
    click_on 'Enviar'

    expect(page).to have_content 'pt: Rede sem fio -> en: WiFi'
  end

  scenario 'fail' do
    visit new_card_path

    click_on 'Enviar'
    expect(page).to have_content "Não se esqueça de preencher a versão em português!"
  end
end
