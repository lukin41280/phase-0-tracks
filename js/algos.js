// RELEASE 0 PSEUDOCODE
// look at the first word in the array
// make this the largest word
// look at the next word in the array
// if this is larger than what exists, overwrite that word, if not, move on
// repeat this until the end of the array has been reached

// FUNCTIONS -------------------------------------

// RELEASE 0
function longestPhrase(wordsArray){
	longestWord = "";
	for (var i = 0; i < wordsArray.length; i++){
		if (wordsArray[i].length > longestWord.length){
			longestWord = wordsArray[i];
		}
	}
	return longestWord;
}

// RELEASE 1
function keyValueMatch(objectOne, objectTwo){
	// need to compare the items within objectOne to objectTwo
	for (var property in objectOne){ 
		if (objectOne[property] == objectTwo[property]) {
			return true;
		}
	}
	return false;
}

// RELEASE 2
function randomTestData(arraySize) {
	// need to generate random words and create array 
	var letters = "abcdefghijklmnopqrstuvwxyz";
	newArray = [];
	// randomly take letters and build random sized words to add to array
	for ( var i = 0; i < arraySize; i ++) {
		var randomWord = "";
		var wordLength = Math.floor(Math.random() * 11) + 1;	
			for ( var k = 0; k < wordLength; k++) {
				randomWord = randomWord + letters.charAt(Math.floor(Math.random() * letters.length));
			}
		newArray.push(randomWord);
	}
	return newArray;
}


// DRIVER CODE -----------------------------------

// RELEASE 0
// myArray = ["long phrase", "longest phrase", "longer phrase"];
// console.log(longestPhrase(myArray));
// otherArray = ["this wont be long", "nor will this", "or this", "but this one will be!!!!"];
// console.log(longestPhrase(otherArray));

// RELEASE 1
//To get true:
// var trueTest = keyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54});
// console.log(trueTest);
// // To get false:
// var falseTest = keyValueMatch({name: "Steven", age: 33}, {name: "Tamir", age: 54});
// console.log(falseTest);

// RELEASE 2
// create 10 instances of random arrays
for (var counter = 1; counter < 11; counter ++) {
	var randomArray = randomTestData(5);
	console.log("Random array number " + counter + ":");
	console.log(randomArray);
	var longWord = longestPhrase(randomArray);
	console.log("Longest word in array is: " + longWord + "\n");
}
