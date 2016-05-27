# encrypt pseudocode

# define method with string parameter

# define a counter variable

# create while loop for each index in string

# for each index, assign string index to use .next method

# increase counter variable by 1

# print new string to screen


def encrypt(string) 
   index = 0
   while index < string.length
     string[index] = string[index].next
     index = index + 1
   end
   puts string
end

encrypt("abc")
