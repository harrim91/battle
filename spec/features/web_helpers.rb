def sign_in_and_play
  visit('/')
  click_button('Start')
  fill_in :player_1_name, with: 'Tyrion Lannister'
  fill_in :player_2_name, with: 'Cersei Lannister'
  click_button 'Submit'
end

def attack_and_confirm
  click_button('Attack')
  click_button('OK')
end
