**Abstraction** - The separation of users from whats happening "under the hood."

​					Be aware of abstractions as they relate to different levels of coding 

**Ruby Style** matters, some key points to remember. 

​	Text editors tab function should be set to 2 spaces. 

​	#  is used for single line comments. 

=begin

begin and end are used to make multi line comments. 

No text should be included on the same line as begin or end, no space should be included between the = 

=end 

**snake_case** is preferred when initializing a variable, method or file. 

**CONSTANT** variables are denoted with all uppercase characters. 

**Spaces and operators** Standard space is used between mathematical operators with the exceptions of ****** the exponent operator and the / when used in rational literals.

**Brackets**[] and **parantheses** () do not required before and after spaces. 

**Braces** {} do require spaces except when used for interpolation. 

**interpolation** is denoted like this 

```ruby
variable = "random string"
	puts "This is my #{variable}"
=> "This is my random string."
```

**API** stands for Application Programming Interface, In general it can refer to documentation or the workings of an application specifically. 

**: :** is referred to as a 'namespace'

(Activerecord: :Base) Would refer to the *base* class of the *Activerecords* module 

**methods** denoted by : : are class methods.

**methods** denoted by **#** are instance methods. 

**Public Instance Methods** can be applied to any instance of the class. 

: : new and : : try_convert are both class methods. 

**parent** In Ruby every class, sub-classes from some 'parent'

Methods that are available to the parent are also available to the sub-class.

​	For example **Object** is the parent of the **string** class. Methods for <u>objects</u> would also work for <u>strings</u> 

**Directory Commands** 

**mkdir** new_dir - creates a new directory. **rmdir** new_dir - removes directory.

**cd new_dir** - move to the named directory. **touch new_file.txt** creats a new file with with the name and type specified.

**rm new_file.txt** deletes the filed named. **rm -R new_dir** Deletes the named directory. Be careful, this is DESTRUCTIVE. 

