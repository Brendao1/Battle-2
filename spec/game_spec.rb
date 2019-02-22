describe Game do

subject(:game) { described_class.new('Dave', 'Mittens') }

  it 'an attack will cause a player to be damaged' do
    expect(game.Player2).to receive(:damage)
    game.attack
  end

  it 'switches turn from player 1 to player 2 after an attack' do
  expect { game.attack }.to change { game.turn }.from(game.Player1).to(game.Player2)
  end



end
