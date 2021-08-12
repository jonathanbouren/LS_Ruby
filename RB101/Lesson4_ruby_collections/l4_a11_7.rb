# Create a hash that expresses the frequency with which each letter occurs in this string:
=begin
Each letter needs to be separated
each letter needs to be counted
a hash needs to be created
each letter needs to be send to the hash as a key
the number of times each letter occurs needs to be set as the value


=end
statement = "The Flintstones Rock"

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end
p result
