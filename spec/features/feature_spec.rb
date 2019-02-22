require "./app.rb"
require_relative "web_helpers"

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

feature "Viewing PLayer2's hitpoints" do
  scenario 'view hp' do
    sign_in_and_play
    expect(page).to have_content "Mittens's HP 60"
  end
end

feature "Player 1 attacks Player 2 and gets confirmation" do
  scenario 'get confirmation of attach' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Dave attacked Mittens"
  end
end


feature "Player 1 Attacks Player 2 reduces Player 2's HP by 10" do
  scenario 'HP reduced by 10' do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Mittens now has 50 points"
    expect(page).not_to have_content "Mittens 60HP"
  end
end

feature "After player 1 has attacked it becomes player 2's turn" do
  scenario "it is player 2's turn" do
    sign_in_and_play
    click_button "Attack"
    click_link "Click OK"
    expect(page).to have_content "It is Mittens's turn"
  end
end

feature "Viewing PLayer1's hitpoints" do
  scenario 'view hp' do
    sign_in_and_play
    expect(page).to have_content "Dave's HP 60"
  end
end

feature "Player 2 attacks Player 1 and gets confirmation" do
  scenario 'get confirmation of attach' do
    sign_in_and_play
    click_button "Attack"
    click_link "Click OK"
    click_button "Attack"
    expect(page).to have_content "Mittens attacked Dave"
  end
end

feature "Player 2 attacks Player 1 and gets confirmation" do
  scenario 'get confirmation of attach' do
    sign_in_and_play
    10.times{attack_and_click}
    click_button "Attack"
    expect(page).to have_content "Dave has won the game, Mittens is dead!!!"
  end
end
