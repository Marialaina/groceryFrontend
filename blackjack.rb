class Player 
    attr_accessor :name
    attr_accessor :bankroll
    attr_accessor :hand

    def initialize
        @name = "player"
        @bankroll = 100
        @hand = []
    end
end

deck_of_cards = []

human = Player.new
the_house = Player.new

human.name = "human"
the_house.name = "computer"
the_house.bankroll = 10000

#make a class of a card and make 52 cards from that class
#after making 52 cards split it 4 ways in 4 different arrays
