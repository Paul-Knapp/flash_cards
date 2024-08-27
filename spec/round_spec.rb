require './lib/deck'
require './lib/card'
require './lib/turn'
require './lib/round'
RSpec.describe Round do 
    before(:each) do #instatiate all of the variables before 
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @cards = [@card_1, @card_2, @card_3]
    #@turn = Turn.new("Juneau" , @card_1)
    @deck = Deck.new(@cards)
    @round = Round.new(@deck)
    end

    it 'Exists' do

        expect(@round).to be_instance_of(Round)
    end

    xit 'Has a deck' do
     
        expect(@round.deck).to eq (@deck)
    end

    xit 'Starts at 0 turns' do
   
        expect(@round.turns).to eq ([])
    end

    xit 'Can take turns' do
       
        expect(@round.take_turn("Juneau")).to be_instance_of(Turn)
    end

    xit "Tracks number of correct answers" do
        @round.take_turn("Juneau")
        expect(@round.number_correct).to eq 1
    end

    xit "Can tell percent of correct answers" do
        @round.take_turn("Juneau")
        @round.take_turn("Nome")
        expect(@round.percent_correct).to eq
    end

end