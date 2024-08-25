require './lib/deck'
require './lib/card'
require './lib/turn'

RSpec.describe Round do 
    xit 'exists' do
        round = Round.new(deck)
        #create a round object to test
        expect(round).to be_instance_of(Round)
    end

    xit 'has a deck' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        #create multiple cards to put into the deck

        deck = Deck.new(card_1, card_2, card_3)
        #create an instance of the deck class
        round = Round.new(deck)
        #create an instance of the round class for the test
        expect(round.deck).to eq (deck)
    end

    xit 'an empty array of turns' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        #create multiple cards to put into the deck

        deck = Deck.new(card_1, card_2, card_3)
        #create an instance of the deck class
        round = Round.new(deck)
        #create an instance of the round class for the test
        expect(round.turns).to eq ([])
    end

    xit 'can take turns' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        #create multiple cards to put into the deck

        deck = Deck.new(card_1, card_2, card_3)
        #create an instance of the deck class
        round = Round.new(deck)
        #create an instance of the round class for the test
        expect(round.take_turn("Juneau")).to be_instance_of(Turn)
    end
end