require './lib/turn'
require './lib/card'

RSpec.describe Turn do 
    it 'exists' do 
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card )
        #create an instance of the card class for testing
        #require 'pry' ;Binding.pry
        expect(turn).to be_instance_of(Turn)
    end 

    it "has a guess" do   
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card )

        expect(turn.guess).to eq("Juneau")
    end

    it "has a card" do 
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
        current_card = turn.card
        expect(current_card).to be_instance_of(Card)
    end

    it "has a correct guess" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)

        expect(turn.correct?).to eq true
        
    end

    it "has an incorrect guess" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Denver", card)

        expect(turn.correct?).to eq false
    end

    it "ignores any capital letter" do
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("JUNEAU", card)

        expect(turn.correct?).to eq true
    end
end