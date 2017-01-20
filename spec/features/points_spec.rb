require "spec_helper"

  feature 'Check hit points of the opponent' do
    scenario 'Player 1 checks hit points of Player 2' do
      sign_in_and_play
      expect(page).to have_content($player_2.hit_points)
    end
  end



# Attack.spec threw an error because the test expected 'hit point', whereas attack.erb printed 'HP'.
# Here, in points_spec the test expected to have_content(hit_points),
# but that needed to be passed as a parameter of $player_2.
# Now it all passes, hope that's helped explain! Just typos as ever...
