/*Write a function that takes an array of strings and returns the longest string
-Step 1: define function and name it longestString
-Step 2: create empty strLen variable that will contain int length of strings 
in array and empty longestStr variable that will hold the longest string 
NOTE: Creating the strLen variable to hold the lenght of each string was unneccisary
I ended up just calling .length on longestStr for comparisons. This fixed my bugs too.
-Step 3: Iterate through each item in the array
-Step 4: for each item in the array compare it's length to the current strLen value
-Step 5: If the current string is longer than the current strLen value
make the current string's length the new value of strLen and update longestStr to the current string
-Step 6: if the current string is not longer than the current value of strLen then move on
-Step 7: exit loop
-Step 8: return longestStr*/


// FUNCTIONS
function longestString(array) {
	var longestStr = "";
	for (i = 0; i < array.length; i++) {
		if (array[i].length > longestStr.length) {
			longestStr = array[i];
		} else if (array[i].length <= longestStr.length) {
			longestStr = longestStr;
		} else {
			break; 
		}
	}
	return longestStr;
}

/* Write a function which compares to objects and returns true if the objects share
at least one key-value pair. If they do not return false.
- Step 1: define a function that takes two objects args and name it objectComparison
- Step 2:Create a null variable to store the end boolean result 
- Step 3: Loop through the first object using the key as a parameter
- Step 4:compare the first objects current key to the second objects current key and
the first objects properties to the second objects properties by using a nested loop
- Step 5: if they match set the null variable to true
- Step 6: if they do not match set the null variable to false. 
- Step 7: return the variable
*/

function objectComparison(obj1,obj2) {
	var has_match = null;
	for (key1 in obj1) {
		for (key2 in obj2) {
			if (key1 == key2 && obj1[key1] == obj2[key2]) {
				has_match = true;
			} else {
				has_match = false;
			}
		}
	}
	return has_match;
}

/* write a function which takes an int arg and returns an array of strings
with int length (the array length - strings can be from 1-10 chars and should be
random)
- Step 1: Define a function named makeArray that takes an int arg
- Step 2: define an empty array variable
- Step 3: define an empty string variable
- Step 4: define a string of possible characters for string creation
- Step 5: create a loop that creates strings from possible characters and 
and stores string in the empty array (loop executes int times)
- Step 6: exit loop and return array
*/

function makeArray(int) {
	var ary = new Array();
	var str = ""
	var char_set = "abcdefghijklmnopqrstuvqxyz";
	for (i = 0; i < int; i++) {
		str = char_set.slice(Math.floor(Math.random() * 1),Math.floor(Math.random() * 10))
		ary.push(str);
	}
	return ary;
}

// DRIVER CODE
var newArray = ["This is a string", "This is a slightly longer string",
 "Of all the strings this is by far the longest string"];
var yetAnotherArray = ["one", "two", "three", "four", "five", "six"];

console.log(longestString(newArray));
console.log(longestString(yetAnotherArray));  

var obj1 = {name:"Tony",favColor:"Magenta",favCheese:"Buratta"};
var obj2 = {name:"Derek",favColor:"Dark Blue",favCheese:"Brie"};
var obj3 = {name:"Xotor",favPlace:"Yosemite",favCheese:"Buratta"};
var obj4 = {name:"Xotri",favWord:"Magenta",favCheese:"Kraft singles"};

console.log(objectComparison(obj1,obj2));
console.log(objectComparison(obj1,obj3));
console.log(objectComparison(obj1,obj4));

for (i = 0; i <= 10; i++) {
	var ary1 = makeArray(i);
	console.log(ary1);
	console.log(longestString(ary1));
}