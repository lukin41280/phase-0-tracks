// RELEASE 0
// PSEUDOCODE
// look at the first word in the array
// make this the largest word
// look at the next word in the array
// if this is larger than what exists, overwrite that word, if not, move on
// repeat this until the end of the array has been reached

// FUNCTION
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

myArray = ["long phrase", "longest phrase", "longer phrase"];
console.log(longestPhrase(myArray));
otherArray = ["this wont be long", "nor will this", "or this", "but this one will be!!!!"];
console.log(longestPhrase(otherArray));