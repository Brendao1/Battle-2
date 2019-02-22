class Game

attr_reader :Player1, :Player2, :turn

  def initialize(user1, user2)
    @Player1 = Player.new(user1)
    @Player2 = Player.new(user2)
    @turn = @Player1
end

  def attack(player)
    player.damage
    if @turn == @Player1
      @turn = @Player2
    elsif @turn == @Player2
      @turn = @Player1
    end
  end

end
