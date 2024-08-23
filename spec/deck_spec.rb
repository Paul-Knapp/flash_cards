require './lib/deck'

RSpec.describe Deck do
    it exists do 
        card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        #create an instance of the card class
        deck = Deck.new([card1])
    end
end