def sign_in_and_play
  visit('/')
  fill_in('player_1_name', with: 'Mica')
  fill_in('player_2_name', with: 'Varvara')
  click_button('submit')
end
