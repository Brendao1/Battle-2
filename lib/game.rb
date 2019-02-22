class Game

attr_reader :Player1, :Player2, :turn, :attacker

  def initialize(user1, user2)
    @Player1 = Player.new(user1)
    @Player2 = Player.new(user2)
    @turn = @Player1
    @attacker = @Player2
end

  def attack
    if @turn == @Player1
      @Player2.damage
      @turn = @Player2
      @attacker = @Player1
    elsif @turn == @Player2
      @turn = @Player1
      @Player1.damage
      @attacker = @Player2
    end
  end

end
