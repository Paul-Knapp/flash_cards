require './lib/deck'
require './lib/card'

RSpec.describe Deck do
    it "exists" do 
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        
        cards = [card_1 ,]
        deck = Deck.new (cards)
        #create an instance of the deck class

        expect(deck).to be_instance_of(Deck)
        #check if the created class is an instance of the Deck class
    end

    it "can hold more than one card" do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        #create multiple cards to put into the deck

        deck = Deck.new(card_1, card_2, card_3)
        #create an instance of the deck class
        expect(deck).to be_instance_of(Deck)
        #check if the created class is an instance of the deck class
    end

    it "can count the number of cards" do 
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        #create multiple cards to put into the deck

        deck = Deck.new(card_1, card_2, card_3)
        #create an instance of the deck class
        expect(deck.count).to eq (3)
        #check if the .count method = the length of the array
    end

    it "can sort cards by category" do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        #create multiple cards to put into the deck

        deck = Deck.new(card_1, card_2, card_3)
         #create an instance of the deck class
        
        expect(deck.cards_in_category(:STEM)).to contain_exactly(card_2, card_3)
    end
end