current_path = File.dirname(__FILE__)

require current_path + '/lib/test.rb'
require current_path + '/lib/file_reader.rb'
require current_path + '/lib/result_test_printer.rb'

questions_path = current_path + "/data/questions.txt"
results_path = current_path + "/data/results.txt"
answers_path = current_path + "/data/answers.txt"

questions = FileReader.new(questions_path).lines
results = FileReader.new(results_path).lines
answers = FileReader.new(answers_path).lines

test = Test.new(questions, answers)
test.ask_questions

result_test_printer = ResultTestPrinter.new(test.scores, results)
puts "\n#{result_test_printer.result}\n"

