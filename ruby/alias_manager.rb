### swap first and last name

def name_swap (firstName, lastName)
	newName = lastName + " " + firstName
end

### tester for name_swap
name = "Bob Vincent"
splitName = name.split(' ')
p splitName

switchName = name_swap(splitName[0], splitName[1])
p switchName

###change vowels to next letter in sequence and keep case specific.  

def next_vowel (char)
	# name all vowels and turn into character arrays
	allVowels = "aeiouAEIOU".chars
  	# create index variable for each character passed through
    vowelIndex = allVowels.index(char)	
    	# set IF statements for edge casses.  Else set character to 1
    		# added to vowel index 
    	if char == "u"	
    		char = "a"
    	elsif char == "U"	
    		char = "A"
    	else 
    		char = allVowels[vowelIndex+1]
    	end
end

### tester for next_vowel
 p next_vowel("U")

### change consonants to next letter in sequence and keep case specific

def next_consonant (char)
	# name all consonants and turn into character arrays
	allConsonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".chars
  	# create index variable for each character passed through
    consonantIndex = allConsonants.index(char)	
    	# set IF statements for edge casses.  Else set character to 1
    		# added to consonant index 
    	if char == "z"	
    		char = "b"
    	elsif char == "Z"	
    		char = "B"
    	else 
    		char = allConsonants[consonantIndex+1]
    	end
end

### tester for next_consonant
p next_consonant("d")
# incorporate all three methods into one method

