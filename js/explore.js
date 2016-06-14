// PSEUDOCODE
// Make a word
// Start at last letter and make it first
// Go thru each letter following and do the same
// Print out new reversed word


// FUNCTION DEFINITION
function reverse(word) {
	var reverseWord = "";
	for (var i = word.length-1; i >= 0 ; i--) {
		reverseWord = reverseWord + word[i];
	}	
	return reverseWord;
}
	



// DRIVER CODE
backwards = reverse("JavaScript")
if (backwards == backwards){
	console.log(backwards)	
}
