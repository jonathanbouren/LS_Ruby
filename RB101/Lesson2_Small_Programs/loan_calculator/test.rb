=begin
Take everything you've learned so far and build a mortgage calculator (or car payment calculator -- it's the same thing).

You'll need three pieces of information:

the loan amount
the Annual Percentage Rate (APR)
the loan duration
From the above, you'll need to calculate the following things:

monthly interest rate
loan duration in months
monthly payment
You can use the following formula:
m = p * (j / (1 - (1 + j)**(-n)))
m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months
When you write your program, don't use the single-letter variables m, p, j, and n; use explicit names. For instance, you may want to use loan_amount instead of p.
Figure out what format your inputs need to be in. For example, should the interest rate be expressed as 5 or .05, if you mean 5% interest?
If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate.
Be careful about the loan duration -- are you working with months or years? Choose variable names carefully to assist in remembering.
You can use this loan calculator to check your results.

=end
=begin
pseudo-code
  start the program
  initialize the constants that will be used- messages, methods.
  greet the user
  prompt the user for information
  get the information entered by the user
  if the information is correct proceed to calculation
  else prompt the user to correct the information
  display the result to the user
  ask the user if they would like to perform another calculation
  if yes, return to the start of the program
  if no, thank the user and end the program

  START
    PRINT Greet the user and display the purpose of the program
    SET the variable for the monthly interest rate
    SET the variable for the loan duration in months
    SET the variable for the monthly payment

    Allow the user to enter the time in years or months
    Allow the user to enter the interest rate as a whole number or a decimal
    CONVERT

    PRINT a message to the user to enter the required information
    GET the loan amount
    GET the length of the loan in years
    GET the interest rate
    use the provided formula to calculate the monthly payment using the users input

=end


































  require 'pry'



  GREETING_MSG = "Hello, welcome to the loan calculator.\n Take control of your financial future today!"

  LOAN_MSG = "Please enter the total amount of the loan:"

  LENGTH_MSG = "Please enter the length of the loan in months:"

  INTEREST_MSG = "Please enter the interest rate:"



=begin
m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months
=end
def valid_number?(num)
  num.to_f().to_s() == num || num.to_i().to_s() == num || num.to_s().to_f() == num
end
def valid_time?(num)
  num.to_i().to_s() == num
end

loop do
  interest = " "
=begin
def loan_amount()
  loop do
  puts "Please enter the amount of the loan:"
  loan_amount = Kernel.gets().chomp().delete(',').to_f().to_s()
    if valid_number?(loan_amount)
      loan_amount = loan_amount.to_f()
      puts loan_amount
      break
     puts "Please enter a valid number"
   end
 end
end


def interest_conversion()
  loop do
  puts "Please enter the interest rate (example 5, 5.5, 10.1)"
  interest = Kernel.gets().chomp()
  if valid_number?(interest)
    interest = interest.to_f()
    interest = interest / 100
    puts interest
    break
  else
  puts "Invalid input: Enter a valid interest rate (example 5, 5.5, 10.1)"
    end
  end
end
=end
def loan_length()
  loop do
  puts "Enter the length of the loan:"
  puts "How many years?:"
  loan_years = Kernel.gets().chomp()
  puts "How many months?:(If whole years, enter 0 for months.)"
  loan_months = Kernel.gets().chomp()
  if valid_time?(loan_years) && valid_time?(loan_months)
    loan_time = (loan_years.to_i() * 12) + (loan_months.to_i())
    puts loan_time
    break
  else
    puts "Unable to validate time.\n Please enter a whole number for years and months.\n If whole years (Example => 5 years) simply enter 0 for months."
    end
  end
end


#loan_amount()
#interest_conversion()
loan_length()

break
end







































  puts "Placeholder"
