// RELEASE 0 PSEUDOCODE
// look at the first word in the array
// make this the largest word
// look at the next word in the array
// if this is larger than what exists, overwrite that word, if not, move on
// repeat this until the end of the array has been reached

// FUNCTIONS
function longestPhrase(wordsArray){
	// create empty string
	longestWord = "";
	// loop thru each index of the array and check if string is longer than 
	// longestWord.  If so, place new word in longestWord
	for (var index in wordsArray){
		if (wordsArray[index].length > longestWord.length){
			longestWord = wordsArray[index];
		}
	}
	return longestWord;
}

function keyValueMatch(objectOne, objectTwo){
	// need to compare the items within objectOne with objectTwo
	for (var property in objectOne){
		// first check if a property matches in both objects
		if (objectTwo.hasOwnProperty(property) == true){
			// if true, now check the values to be the same
			if (objectOne[property] == objectTwo[property]){
				console.log("The prop is "+property+" and value is "+objectOne[property]);
			} else {
				console.log("Nothing matches");
			}
		
		// if no matches:
		} else {
				console.log("Nothing matches");
			}
			
		
		//console.log(objectOne[pair]);
	// otherwise they do not match
	}
	
}

keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});


// DRIVER CODE
// longestPhrase:
// myArray = ["long phrase", "longest phrase", "longer phrase"];
// console.log(longestPhrase(myArray));
// otherArray = ["this wont be long", "nor will this", "or this", "but this one will be!!!!"];
// console.log(longestPhrase(otherArray));