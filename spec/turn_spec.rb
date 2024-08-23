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

end