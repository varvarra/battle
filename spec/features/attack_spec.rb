
  feature 'Attack' do

    scenario 'Player 1 attacks Player 2 and receives confirmation ' do
      sign_in_and_play
      click_link("Attack!")
      expect(page).to have_content "#{ $player_1.name} attacked #{ $player_2.name }."
    end

    scenario 'Reduce Player 2 HP by 10' do
      sign_in_and_play
      click_link("Attack!")
      expect(page).to have_content("Its score is #{$player_2.hit_points} hit points.")
    end
  end
