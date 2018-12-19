require './test.rb'
require './print_result.rb'

test = Test.new
test.run_test
score = test.get_score
result = PrintResult.new(score)
result.print_result
