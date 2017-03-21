class Test
  attr_reader :scores

  def initialize(questions, answers)
    @questions = questions
    @answers = answers
    @scores = 0
  end

  def print_answers
    @answers.each { |answer| puts answer }
  end

  def is_answer_valid?(answer)
    (1..@answers.count).include?(answer)
  end

  def check_answer_validness(answer)
    answer = STDIN.gets.to_i
    while !is_answer_valid?(answer) do
      print_answers

      print "Ваш ответ: "
      answer = STDIN.gets.to_i
    end

    answer
  end

  def ask_question(question)
    puts "\n#{question}"
    print_answers

    print "Ваш ответ: "
    user_answer = check_answer_validness(user_answer)

    case user_answer
      when 1 then @scores += 2
      when 3 then @scores += 1
    end
  end

  def ask_questions
    @questions.each do |question| 
      ask_question(question)
    end
  end
end
