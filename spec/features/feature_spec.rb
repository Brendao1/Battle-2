require "./app.rb"


feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :Player1, with: 'Dave'
    fill_in :Player2, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

feature "Viewing PLayer2's hitpoints" do
  scenario 'view hp' do
    visit('/')
    fill_in :Player1, with: 'Dave'
    fill_in :Player2, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content "Mitten's HP"  
  end
end
