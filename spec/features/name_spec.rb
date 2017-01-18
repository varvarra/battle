require "spec_helper"


  feature 'Entry form' do
    scenario 'submit a name form and see the name displayed on the screen' do
      sign_in_and_play
      expect(page).to have_content('Mica')
      expect(page).to have_content('Varvara')
    end
  end
