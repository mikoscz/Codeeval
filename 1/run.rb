line = '3 5 15'

class FizzBuzz < Struct.new(:line)
  def to_s
    number_range.join(' ')
  end

  private

  def number_range
    (1..range_number).map do |number|
      if fizz?(number) && buzz?(number)
        'FB'
      elsif fizz?(number)
        'F'
      elsif buzz?(number)
        'B'
      else
        number
      end
    end
  end

  def splited_line
    line.split(' ').map(&:to_i)
  end

  def first_divider
    splited_line.first
  end

  def second_divider
    splited_line[1]
  end

  def range_number
    splited_line.last
  end

  def buzz?(number)
    number % second_divider == 0
  end

  def fizz?(number)
    number % first_divider == 0
  end
end

obj = FizzBuzz.new(line)
puts obj
