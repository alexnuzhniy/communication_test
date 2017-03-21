class Test
  def initialize(questions, answers)
    @questions = questions
    @answers = answers
    @scores = 0
  end

  def scores
    @scores
  end

  def ask_questions
    @questions.each do |question| 
      puts "\n#{question}"

      # Available answers output
      @answers.each {|answer| puts answer}
      print "Ваш ответ: "
      user_input = STDIN.gets.to_i

      # Verified user's answer validness
      while user_input != 1 && user_input != 2 && user_input != 3 do
        @answers.each {|answer| puts answer}
        print "Ваш ответ: "
        user_input = STDIN.gets.to_i
      end

      # Score counting
      case user_input 
        when 1 
          @scores += 2
        when 3
          @scores += 1
      end 
    end
  end
end
