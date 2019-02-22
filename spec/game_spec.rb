describe Game do

subject(:game) { described_class.new(player1, player2) }
let(:player1) { double(:player) }
let(:player2) { double(:player) }

  it 'an attack will cause a player to be damaged' do
    expect(player2).to receive(:damage)
    game.attack(player2)
  end



end
