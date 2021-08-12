numbers = [1, 2, 3, 4, 5]

def double_number(numbers)

count = 0

loop do
  break if count == numbers.size

  numbers[count] *= 2

  count += 1
 end
numbers
end

p double_number(numbers)
