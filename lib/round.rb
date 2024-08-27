
class Round
    attr_accessor :deck, :turns, :current_card, :number_correct
    #allow acces to the variables that will be queried
    def initialize(deck)
        @deck = deck
        @turns = []

        @number_correct = 0 
    end
    
    def current_card
        @deck.cards.first
        #call the .first method on 
    end

    def take_turn(guess)
       new_turn = Turn.new(guess, current_card)
       #create new instance of a turn
       if new_turn.correct? == true
        @number_correct += 1
       end
       new_turn >> @turns
    end
    
end 