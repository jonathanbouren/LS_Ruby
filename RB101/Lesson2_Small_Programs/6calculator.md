Build a basic command line calculator program that does the following. 

1. Asks for two numbers
2. Asks for the type of operation to perform, add, subtract, multiply or divide.
3. Displays the result. 

For these exercises we will be using Kernel. before our methods. 



1. Create the file calculator.rb
2. Before writing the code, write some pseudocode that will describe the purpose or goal of the application. For this exercise it includes the three points mentioned above. 
3. The first method we are using is **#gets** , #gets pauses the program, waits for the user to enter something and the the program ends. 
4. The **#puts** method is used to display content to the screen. 
5. When creating a conditional, take care to use an equality comparison (==) as opposed to an assignment (=)



Ruby Docs Notes

**#to_i** This method converts a string to an integer. However it only returns the valid numbers in a string. If there are no valid numbers in a string, #to_i returns 0 

**#to_f** Returns the result of interpreting leading characters in str as a floating point number. Extraneous characters past the end of a valid number are ignored. 

For both of these methods, if there is not a valid number at the start of str. 0 or 0.0 will be returned. 

6. Local variables initialized within an if can be accessed outside of the if. 

7. In Ruby, if expressions can return a value.

   ```ruby
   answer = if true
   						'yes'
   					else
   						'no'
   					end	
   Kernel.puts(answer)
   # => yes
   ```

   