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
	// set boolean variable to default false and when a match is made, turns to true.
	// if no matches, variable remains false
	var matchChecker = false;
	// need to compare the items within objectOne to objectTwo
	// go thru the properties in objectOne
	for (var property in objectOne){
		// check if the value matches in both objects.  
		if (objectOne[property] == objectTwo[property]) {
			matchChecker = true;
		} 
	}
	return matchChecker;
}



// DRIVER CODE RELEASE 0
// longestPhrase:
// myArray = ["long phrase", "longest phrase", "longer phrase"];
// console.log(longestPhrase(myArray));
// otherArray = ["this wont be long", "nor will this", "or this", "but this one will be!!!!"];
// console.log(longestPhrase(otherArray));

// DRIVER CODE RELEASE 1
// To get true:
var trueTest = keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
console.log(trueTest);
// To get false:
var falseTest = keyValueMatch({name: "Steven", age: 33}, {name: "Tamir", age: 54});
console.log(falseTest);