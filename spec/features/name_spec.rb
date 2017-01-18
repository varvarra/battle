require "spec_helper"

  feature 'Entry form' do
    scenario 'submit a name form and see the name displayed on the screen' do
      visit('/')
      fill_in('player_1_name', with: 'Mica')
      fill_in('player_2_name', with: 'Varvara')
      click_button('submit')
      expect(page).to have_content('Mica')
      expect(page).to have_content('Varvara')
    end
  end
