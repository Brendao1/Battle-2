def sign_in_and_play
  visit('/')
  fill_in :Player1, with: 'Dave'
  fill_in :Player2, with: 'Mittens'
  click_button 'Submit'
end

def attack_and_click
  click_button "Attack"
    click_link "Click OK"
end
