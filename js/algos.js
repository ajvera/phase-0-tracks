/*Write a function that takes an array of strings and returns the longest string
-Step 1: define function and name it longestString
-Step 2: create empty strLen variable that will contain int length of strings 
in array and empty longestStr variable that will hold the longest string 
(will be returned at end)
-Step 3: Iterate through each item in the array
-Step 4: for each item in the array compare it's length to the current strLen value
-Step 5: If the current string is longer than the current strLen value
make the current string's length the new value of strLen and update longestStr to the current string
-Step 6: if the current string is not longer than the current value of strLen then move on
-Step 7: exit loop
-Step 8: return longestStr*/

function longestString(array) {
	var strLen = 0;
	var longestStr = null;
	for (i = 0; i < array.length; i++) {
		if (array[i].length > strLen) {
			strLen = array[i].length;
			longestStr = array[i];
		} else if (array[i].length < strLen) {
			strLen = strLen;
			longestStr = longestStr;
		} else {
			break; 
		}
	}
	return longestStr;
}


var newArray = ["This is a string", "This is a slightly longer string",
 "Of all the strings this is by far the longest string"];
var yetAnotherArray = ["one", "two", "three", "four", "five", "six"];

console.log(longestString(newArray));
console.log(longestString(yetAnotherArray));  