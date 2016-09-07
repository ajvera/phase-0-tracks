function formStyleChange(event) {
	//var form = document.getElementsByTagName("form")[0];
	var element = event.target;
	element.parentElement.style.border = "none";
}


var input = document.getElementsByTagName("input")[0];
input.addEventListener("click", formStyleChange);