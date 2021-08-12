question = "How to make a method that can count the number of characters."

def count_characters(string_variable, selected_character)
  character_count = ''
  count = 0
  current_character = ''
  loop do
    break if count == string_variable.size

  current_character = string_variable[count]
  if current_character == selected_character
    character_count << current_character

  end
  count += 1
end
 character_count.size
end

p count_characters(question, 'a')







=begin
Problem - Count the number of characters in a given string
Need to iterate over the string character by character
Need to verfiy if the current character is the specified character
need to select the matching characters into a countable format
need to count the characters and return the amount

Data structure / Algorithm
The problem should only take strings at this point
the problem should be able to identify any type of character including spaces and punctuation.
The sentence should be able to be entered as a variable

Examples / Test Cases

Data Structure

Algorithm
have a defined string represented by a variable
ensure that the program acounts for each character in the string
ensure the program counts each of the selected characters in the string
ensure the count is returned as an answer to the problem

code with intent
=end
