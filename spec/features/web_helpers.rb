def sign_in_and_play
  visit('/')
  fill_in :Player1, with: 'Dave'
  fill_in :Player2, with: 'Mittens'
  click_button 'Submit'
end
