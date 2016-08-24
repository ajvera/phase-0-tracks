//create function reverseString that takes a given string as an argument.
//Iterate through string backwards and add each character to a new string
//return the new string

function reverseString(str) {
	var reversed = '';
	for (var i = str.length-1; i >= 0; i--)
		reversed += str[i];
	return reversed;
}

var getsPrinted = reverseString("Have you seen my cheese?");

if (5 > 1) {
	console.log(getsPrinted)
}