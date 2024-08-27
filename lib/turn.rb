require './lib/card'
class Turn 

    attr_accessor :guess, :card, :answer
    #increase the scope of the guess variable
    
    def initialize(guess , card)
        @guess = guess
        @card = card
    end

    def correct?
         @guess.downcase == @card.answer.downcase     
    end

    def feedback
        if correct? == true
            puts "Correct!"
        else
            puts "Incorrect"
        end
    end
end

# Card.new("What is the capital of Alaska?", "Juneau", :Geography)