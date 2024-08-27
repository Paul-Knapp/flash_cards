require './lib/deck'
require './lib/card'

RSpec.describe Deck do
    before(:each) do #instatiate all of the variables before 
        @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        @cards = [@card_1, @card_2, @card_3]
        #@turn = Turn.new("Juneau" , @card_1)
        @deck = Deck.new(@cards)
    end
    it "exists" do 
        expect(@deck).to be_instance_of(Deck)
        # check if the created class is an instance of the Deck class
    end

    it "can hold more than one card" do
        expect(@deck).to be_instance_of(Deck)
        # check if the created class is an instance of the deck class
    end

    it "can count the number of cards" do 
    
        expect(@deck.count).to eq (3)
        # check if the .count method = the length of the array
    end

    it "can sort cards by category" do
        
        expect(@deck.cards_in_category(:STEM)).to contain_exactly(@card_2, @card_3)
        # expect the cards_in_category to return the cards that fit the category
    end
end