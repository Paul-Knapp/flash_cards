class Turn 
    attr_reader  :guess, :card
    # increase the scope of the guess variable and the card variable
    
    def initialize(guess, card)
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