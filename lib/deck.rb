class Deck
    attr_reader :cards
    def initialize(cards)
        # instatiates the class and creates an array with the arguements as the elements in it.
        @cards = cards
    end

    def count
        # create a method called .count
        cards.length
        # make the .count method query the length of the array
    end

    def cards_in_category(parameter)
       @cards.find_all do |card|
          card.category == parameter 
       end

    end

end