$(document).ready(function() {
	$("#head").mouseenter(function() {
		var inverted = $("<img src='images/inverted_header.jpg' id='inverted'>")
		$(this).replaceWith(inverted);
	});
});
