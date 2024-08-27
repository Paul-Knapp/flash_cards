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
        # should be an instance of the class round
    end

    it 'Has a deck' do
        expect(@round.deck).to eq (@deck)
        # the deck in the class should be the deck we created
    end

    it 'Starts at 0 turns' do
        expect(@round.turns).to eq ([])
        # the round should be instatiated with 0 turns 
    end 

    it 'Can take turns' do
        expect(@round.card_number).to eq 0
        expect(@round.turns.length).to eq 0
        expect(@round.take_turn("Juneau")).to be_instance_of(Turn)
        expect(@round.turns.length).to eq 1
        expect(@round.card_number).to eq 1
        # when we take a turn it should be added to the turns array
    end

    it "Tracks number of correct answers" do
        @round.take_turn("Juneau")
        # the answer in the turn is correct
        expect(@round.number_correct).to eq 1
        # we expect sin
    end

    it "Can tell percent of correct answers" do
        @round.take_turn("Juneau")
        @round.take_turn("Nome")
        expect(@round.percent_correct).to eq 50
    end

    it "can tell percent correct by category" do
        @round.take_turn("Juneau")
        @round.take_turn("Mars")
        @round.take_turn("North North East")
        expect(@round.percent_correct_by_category(:STEM)).to eq 50
        # 1 of 2 answers correct should be 50%
        expect(@round.percent_correct_by_category(:Geography)).to eq 100
        # all answers correct in the category should equal 
    end
end