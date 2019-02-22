describe Game do
  it 'an attack will cause a player to be damaged' do
    game = Game.new
    player = Player.new('Dave')
    expect(player).to receive(:damage)
    game.attack(player)
  end

  it 'an attack will cause a player to lose 10 hitpoints' do
    game = Game.new
    player = Player.new('Dave')
    expect { game.attack(player) }.to change{player.hitpoints}.by -10
  end
end