# swap first and last name
def name_swap (firstName, lastName)
	newName = lastName + " " + firstName
end
	#test for name_swap
name = "Jason Pelletier"
splitName = name.split(' ')
p splitName

switchName = name_swap(splitName[0], splitName[1])
p switchName

# change vowels to next letter in sequence and keep case specific.  

#upperVowels = "AEIOU".chars

#def vowel_index(char)
    #allVowels = "aeiouAEIOU".chars
    #allVowels.index(char)
#end


def next_vowel (changedName)
	# turn vowels and name into character arrays
	allVowels = "aeiouAEIOU".chars
  	nameCharacters = changedName.chars
  	# loop through each character in the name
  	nameCharacters.each do |char|
    	# create index variables for each character passed through
    	charIndex = nameCharacters.index(char)
    	vowelIndex = allVowels.index(char)	
    	# set IF statements for edge casses.  Else set name character to 1
    	# added to vowel index 
    	if char == "u"	
    		nameCharacters[charIndex] = "a"
    	elsif char == "U"	
    		nameCharacters[charIndex] = "A"
    	else #allVowels.include?(char) == true
    		
    		p "letter in name: #{nameCharacters[charIndex]}"
    		p "index is: #{charIndex}"  
    		p "letter in vowels: #{allVowels[vowelIndex]}"
    		p "index is: #{vowelIndex}"
    		p "letter in vowels add 1: #{allVowels[vowelIndex+1]}"
    		p "index is: #{vowelIndex+1}"
    		nameCharacters[charIndex] = allVowels[(vowel_index+1)]
    	end
    end	
end

	#tester for next_vowel
 p next_vowel ("eauU")
 #p vowel_index("i")


# change consonants to next letter in sequence and keep case specific


# incorporate all three methods into one method

