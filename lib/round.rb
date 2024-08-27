
class Round
    attr_reader :deck, :turns, :card_number
    #allow acces to the variables that will be queried
    def initialize(deck)
        @deck = deck
        @turns = []
        @card_number = 0
    end
    
    def current_card
        @deck.cards[@card_number]
    end

    def take_turn(guess)
       new_turn = Turn.new(guess, current_card)
       #create new instance of a turn for the guess to be used on 
       @turns << new_turn
       #puts the new turn into the turns array
       @card_number += 1
       new_turn
    end

    def number_correct
        @turns.count { |turn| turn.correct? }
        #this method looks at the turns array and counts the number of
        #correct answers. it is almost shorthand for the .each
    end

    def number_correct_by_category(category)
        @turns.count { |turn| turn.correct? && turn.card.category == catagory}
        #runs the .count method on the "each turn in the turns array"
        #returns the number of turns that are correct and in the queried category
    end

    def percent_correct
        (number_correct.to_f / @turns.count * 100).round(1)
        #does math to convert a number to a percent with a float value 
        #the ruby language rounds integers when divided so the float returns
        # a more accurate result
    end

    def percent_correct_by_category(category)
        category_turns = @turns.select { |turn| turn.card.category == category }
        correct_in_category = category_turns.count { |turn| turn.correct? }
        return 0.0 if category_turns.empty?
        (correct_in_category.to_f / category_turns.count * 100).round(1)
    end

end 