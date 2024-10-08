require './lib/deck'
require './lib/card'
require './lib/turn'
require './lib/round'
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    @card_4 = Card.new("What is the capital of Wisconsin", "Madison", :Geography)
    @card_5 = Card.new("what is the term for programs that allow designing in 3d", "CAD", :STEM)
    @cards = [@card_1, @card_2, @card_3, @card_4, @card_5]
    @deck = Deck.new(@cards)
    @round = Round.new(@deck)
  
    
   

def start
   p "welcome your playing with #{@deck.count} cards"
   p "----------------------------------------------"
   # display the starting text for the game
   # p "This is card number #{@round.index + 1} of #{@cards.length}"

   @deck.cards.each do 
    puts "This is card number #{@round.card_number} of #{@cards.length}"
    puts @round.current_card.question
   puts @round.take_turn(gets.chomp)
    puts @round.turns.last.feedback
   end

   puts "********  Game over! ********"
   puts "You had #{@round.number_correct} correct guesses out of #{@cards.length}  for a total score of #{@round.percent_correct}"
   puts "STEM - #{@round.percent_correct_by_category(:STEM)}%"
   puts "Giography - #{@round.percent_correct_by_category(:Geography)}%"
end

start()

