words = "the flintstones rock"
words =  words.split.map { |word| word.capitalize! }.join(' ')
p words
