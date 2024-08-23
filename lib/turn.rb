class Turn 

    attr_reader :guess, :card
    #increase the scope of the guess variable
    
    def initialize(guess , card)
        @guess = guess
        @card = card
    end

    def correct?
        if guess.downcase == (card.answer).downcase
            true
        else
            false
        end
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