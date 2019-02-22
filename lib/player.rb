class Player
    attr_reader :name, :hitpoints

    DEFAULT_VALUE = 60
    DEFAULT_HIT = 10

    def initialize(name, hitpoints = DEFAULT_VALUE)
        @name = name
        @hitpoints = hitpoints
    end

    def attack(player)
      player.damage
    end

    def damage
      @hitpoints -= 10
    end

end
