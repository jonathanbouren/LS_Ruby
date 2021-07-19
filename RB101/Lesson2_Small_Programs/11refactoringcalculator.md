This lessons walks through the refactoring of the calculator built in section 6. 

The following method is used to check if a number is valid. If the input cannot be converted to an integer, ruby will return 0. Therefore, if the number that is entered as a string can be converted to an integer without returning 0, it is a valid number. 

```ruby
def valid_number?(num)
    num.to_i() != 0
  end
```

​	This method does not contain exceptions for if the number entered is actually '0' and in this case it would return an error. But this was not covered in the scope of the lesson. 

It was shown how to create multiple line text outputs without the requirement of the \n newline character. 

```ruby
operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
    MSG
```

In this case, the variable is set by using the shovel operator. -MSG is simply the text used to open and close the comment that will be printed to the screen, it seems it can be any combination of characters as long as it starts and ends the text. 

There is also a block that creates an array based on the numbers used to choose the operator. The numbers are not separated by commas or blocks, nor are they defined anywhere else in the program. It seems to be an on-the-fly array created simple for use in that block, but it functions nicely. 

```ruby
if %w(1 2 3 4).include?(operator) # %w()
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end
```

Lets take a look at the full code and add notes as we go

```ruby
  # Ask the user for two numbers
  # Ask the user for an operation to perform
  # Perform the operation on the two numbers
  # Output the result
	
=begin
this method allows us to check if the number is valid by attempting to convert the users input (which will arrive as a string) to an integer. Strings that cannot be converted to integers will return 0. This method is effective for this purpose but if the number entered by the user is actual '0' then it will return an error and not validate the number. 
=end
  
  def valid_number?(num) 
    num.to_i() != 0
  end
=begin
This method is used to create a little interactivity in the application, and is not a vital part of the code. When the operator is chosen, this method creates a message that corresponds with the users choice of operator and displays a simple message that the program is performing the operation that the user chose. 
=end
  def operation_to_message(op)
    case op
    when '1'
      'Adding'
    when '2'
      'Subtracting'
    when '3'
      'Multiplying'
    when '4'
      'Dividing'
    end
  end

# This method simply allows us to add => to each message as a prompt. 
  def prompt(message)
    Kernel.puts("=> #{message}")
  end
# Here the variables number1 and number2 are defined and set to ' '(empty)
  number1 = ' '
  number2 = ' '
#The first use of prompt, inserting => in front of the welcome message. 
  prompt("Welcome to Calculator! Please enter your name:")
	
# Here name is defined as an empty variable to be used in the loop. 
  name = ''
=begin
This loop is created to check the validity of the users name. It simply checks if the name is empty or not, therefore 12345 would also be recognized as a name. Hitting enter and leaving an empty space would initiate the prompt to "Make sure you enter a valid name!"
=end
  loop do
    name = Kernel.gets().chomp()
    if name.empty?()
      prompt("Make sure you enter a valid name!")

    else
      break
    end
  end
#This prompt greets the user by their chosen name. 
  prompt("Hi #{name}!")
=begin
This is the main loop that encloses the whole program. This loop allows the calculator program to be repeated if the user selects 'y'. 
=end
  loop do
=begin
The first inner loop is set to get the first number from the user. It is set in a loop so that the number can be validated by the valid_number? method, with a prompt that informs the user if the input they entered is not a valid number. 
=end
    loop do
    prompt("Whats the first number?")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break

    else
      prompt("Hmmm... that doesn't look like a valid number.")
    end
  end
=begin
If the first number is entered and confirmed valid, the loop breaks and moves on to the second loop, where the user is prompted for the second number, this number is also validated and if the input is a valid number, the program moves on to the message that prompts the user to choose the operation they would like to perform. 
=end
    loop do
    prompt("Whats the second number?")
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Hmmm... that doesn't look like a valid number.")
    end
  end
=begin
This next section creates a message variable. The value of operator_prompt is set to the message which is deliniated by -MSG MSG. MSG is not syntax, it could be any string/word in this case, but with the <<- shovel operator, the message can be written as multiple lines which will display in the console as it is written in the code, without the use of newline \n characters. 
=end
    operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
    MSG

    prompt(operator_prompt)
=begin
Here the operator variable is set, outside of the operator loop. When the prompt dispays the operator_prompt message, the users input is validated to be 1, 2, 3 or 4. This is done by creating an array that includes 1, 2, 3, 4 and checking if the string input by the user matches it. 
=end
    operator = ' '
    loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the numbers...")
=begin
The case is set to read the input from the user and perform the matching operation. Each when - is set to perform a specific operation, addition, subtraction, multiplication, division, as well as converting the users input from string form to integers, so the mathematical operations can be performed. 
=end

    result = case operator
    when "1"
      number1.to_i() + number2.to_i()
    when "2"
      number1.to_i() - number2.to_i()
    when "3"
      number1.to_i() * number2.to_i()
    when "4"
      number1.to_f() / number2.to_f()
    end
#Here the prompt method, with string interpolation is used to display the result to the user. 
    prompt("The result is #{result}")
=begin
This is the final section of the main loop that asks the user if they want to perform another calculation, if they select yes, the entire program starts over from the beginning of the loop, if they type anything other than 'Y' or a word beginning with 'Y', the program will end. With the final prompt displaying a thank you message for using the program. 
=end
    prompt("Do you want to perform another calculation? (Y to calculate again:)")
    answer = Kernel.gets().chomp()

    break unless answer.downcase().start_with?('y')
  end

  prompt("Thank you for using the calculator. Goodbye!")

```

