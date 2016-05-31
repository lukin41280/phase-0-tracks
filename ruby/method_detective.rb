# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, "o")
# => “zoom”

"enhance".center(15)
# => "    enhance    "

"Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

"the usual".concat(" suspects")
#=> "the usual suspects"

" suspects".prepend("The usual")
# => "the usual suspects"

"The case of the disappearing last letter".chop
     #or
"The case of the disappearing last letter"[0...-1]
# => "The case of the disappearing last lette"

"The mystery of the missing first letter"[1..39]
     #or
"The mystery of the missing first letter".reverse.chop.reverse    
     #or
"The mystery of the missing first letter".delete("T")    
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

"z".getbyte(0)
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
   #122 is the binary byte value of the lowercase z character

"How many times does the letter 'a' appear in this string?".count("a")
# => 4