numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]


def double_indexes(numbers)
  doubled_odd_indexes = []
  count = 0

  loop do
    break if count == numbers.size

    current_index = numbers[count]
    current_index *= 2 if count.odd?
    doubled_odd_indexes << current_index

    count += 1
  end
  doubled_odd_indexes
end

p double_indexes(numbers)

# I am very proud of this. 5/August/2021
