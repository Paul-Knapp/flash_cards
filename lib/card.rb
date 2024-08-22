class Card
    attr_reader :question, :answer, :category #an attribute reader to increase the scope of the variables
    def initialize(question , answer , category)
        #create each card with a catagory, a question and an answer
        @question = question
        @answer = answer
        @category = category
        #sets the instance variables to be equal to the variables in the attribute reader.
    end
end