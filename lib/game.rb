class Game

attr_reader :Player1, :Player2

  def initialize(user1, user2)
    @Player1 = Player.new(user1)
    @Player2 = Player.new(user2)
end

  def attack(player)
    player.damage
  end

end
