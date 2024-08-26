
class Round
    attr_accessor :deck, :turns, :card
    #allow acces to the variables that will be queried
    def initialize(deck)
        @deck = deck
        @card = card
        @turns = turns
    end

    def turns
     []
    end

    def take_turn(guess)
        turn = Turn.new(guess, card)
    end
    
end