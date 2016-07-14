#
# (1..100).each do |x|
#     if x % 5 == 0 && x % 3 == 0
#         puts 'FizzBuzz'
#     elsif x % 3 == 0
#         puts 'Fizz'
#     elsif x % 5 == 0
#         puts 'Buzz'
#     else
#         puts x
#     end
# end

line = '3 5 10'

class FizzBuzz
  def initialize(line)
    @line = line
  end

  def splited_line
    @line.split(' ')
  end
end

obj = FizzBuzz.new(line)
p obj.splited_line
