
  feature 'Attack' do

    scenario 'Player 1 attacks Player 2 and receives confirmation ' do
      sign_in_and_play
      click_link("Attack!")
      expect(page).to have_content "#{ $game.player_1} attacked #{ $game.player_2 }."
    end

    scenario 'Reduce Player 2 HP by 10' do
      sign_in_and_play
      click_link("Attack!")
      expect(page).to have_content("Its score is #{$game.player_2.hit_points} hit points.")
    end
  end
