require './lib/turn'
require './lib/card'

RSpec.describe Turn do 
    it 'exists' do 
        turn = Turn.new("Juneau", Card )
        #create an instance of the card class for testing
        #require 'pry' ;Binding.pry
        expect(turn).to be_instance_of(Turn)
    end 

    it "has a guess" do   
        turn = Turn.new("Juneau", Card )

        expect(turn.guess).to eq("Juneau")
    end

    it "has a card" do 
        card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        turn = Turn.new("Juneau", card)
        current_card = turn.card
        expect(current_card).to be_instance_of(Card)
    end
end