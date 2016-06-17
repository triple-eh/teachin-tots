class Game

  NUMBER_OF_QUESTIONS = 10

  attr_reader :current_question, :number_of_current_question

  def initialize
    # creates the question set for this game.
    # @questions = []
    # NUMBER_OF_QUESTIONS.times { @questions << Question.new }
    @number_of_current_question = 1
    @current_question = Question.new
    @tries = 0
  end

  # if current_question returns nil, then we have
  # reached the end of the game.
  # def current_question
  #   @questions[@current_question_index]
  # end


  def next_question
    @current_question = Question.new
    @number_of_current_question += 1
  end

  def increment_tries
    @tries += 1
  end

  def score
    ((NUMBER_OF_QUESTIONS.to_f / @tries) * 100).to_i
  end
end
