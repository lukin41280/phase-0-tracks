### swap first and last name

def name_swap (name)
	# split name into a 2 index array and set new string variable to 
		# swap the first and second index
	splitName = name.split(' ')
	newName = splitName[1] + " " + splitName[0]
end

### tester for name_swap
	#p name_swap("Bob Vincent")


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
	#p next_vowel("U")

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
	#p next_consonant("d")

### incorporate all three methods into one method
def alias_name(name)
	# run swap name to interchange first and last names and then run .chars
		# to turn characters into an array
	swapName = name_swap(name).chars
	# set variables for vowels and consonants and run .chars to form array
	allVowels = "aeiouAEIOU".chars
	allConsonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".chars
	# set a counter to use for the index and loop through each character of 
	# the name
		counter = 0
		swapName.map do |char|
			# check if each letter is a vowel or a consonant and then run 
				# corresponding method to change character and insert into name
			if allVowels.include?(char) == true
				newVowel = next_vowel(char)
				swapName[counter] = newVowel
			elsif allConsonants.include?(char) == true
				newConsonant = next_consonant(char)
				swapName[counter] = newConsonant	
			end
			counter = counter + 1
		end
	# convert name character array into string
	swapName.join('')
end

### tester for alias_name
	p alias_name("Felicia Torres")

