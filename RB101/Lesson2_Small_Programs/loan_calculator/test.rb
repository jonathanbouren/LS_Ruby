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
    Greet the user and display the purpose of the program


=end
