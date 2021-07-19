Pseudo-Code

pseudo code, unlike programming code, is meant for humans to read. 

It is meant to help as load the problem into our brains first. 

There are two layers to solving any problem. 

	1. The logical problem domain layer. 
 	2. The syntactical programming language layer. 

pseudo-code helps us focus on the logical problem domain layer. 

To verify the logic of the pseudo-code it must then be translated to programming code. 



Formal pseudo-code uses keywords to help break the program logic into concrete commands.

START - Start of the program

SET - Sets a variable that can be used later

GET - Retrieve input from the user

PRINT - Displays output to the user

READ - Retrieve value from a variable 

IF/ELSE IF/ELSE - Show conditional branches in logic

WHILE - Show looping logic 

END - End of the program

SUBPROCESS - Simple used to show that some other thing will be used 



Exercises 

```ruby
=begin
  #create a method that returns the sum of two integers 
  define the method name
  get the first integer from the user
  get the second integer from the user
  use an operator to add the two integers together
  show the user the result
  end the program
=end


=begin
  #Formal pseudo-code
  =begin
  START
  SET the method name
  PRINT a message asking the user for the first integer
   	GET the first integer
  PRINT a message asking the user for the second integer
    GET the second integer
    use the + operator to add the two integers together
    PRINT the result of the operation to the console
    END
=end
    

```

```ruby
#a method that takes an array of strings, and returns a string that is all those strings concatenated 

=begin
	Define the array of strings
	Define the method name 
	select each string out of the array of strings
	concantinate the strings together 
	display the resulting single string to the console
=end

#formal pseduo-code
=begin
	START
	SET - Set the array name and the strings that are contained in each index
	SET - Define the method that will concantinate the strings from each index. 
	READ - Iterate over each index in the array, Select each string as an index
	Add the selected strings together using concantination 
	PRINT - Dispaly the resulting concantenated string to the console
	END
=end

	
 

```

```ruby
#a method that takes an array of integers, and returns a new array with every other element

=begin
	having an array of integers. 
	name the method
	iterate over each element in the array
	separating the elements, select every other element in the array
	create a new array to store the results 
	push each selected element into the new array 
	display the resulting array to the console to check for accuracy
	end the program 
=end

#formal pseduo-code 
=begin
	START
	SET the array name and the integers contained within
	SET the method name and scope 
	iterate over the array to select every other element
	SET a new array that will contain every other element
	push each separated element into the new array
	PRINT the new array to the console to check for accuracy 
 END 
=end 

```



