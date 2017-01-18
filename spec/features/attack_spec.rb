require "spec_helper"
  feature 'Attack confirmation' do
    scenario 'Player 1 attacks player 2 and receives confirmaiton ' do
      sign_in_and_play
      click_link('Attack!')
      expect(page).to have_content("Confirmed!")
    end
  end
