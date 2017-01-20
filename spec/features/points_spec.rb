require "spec_helper"

  feature 'Check hit points of the opponent' do
    scenario 'Player 1 checks hit points of Player 2' do
      sign_in_and_play
      expect(page).to have_content (@player_1_hp)
    end
  end
