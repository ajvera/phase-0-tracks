##### --jQuery Research Plan--

######Goals

* Have comprehensive understanding of the main uses for jQuery within the web dev industry
* Attempt to practically apply some of this knowledge (one or two main use cases)

######Approach
* Spend 25 mins on each of the following sources 
	* http://www.w3schools.com/jquery/
	* http://www.teaching-materials.org/jquery/#/
* Take a 5 min break after each session
* Spend 30 mins after break attempting to apply what you've learned (areas that are within the scope of what can reasonably be accomplished in the given time frame).

#####W3Schools
######Main uses
* HTML/DOM manipulation
* CSS Manipulation
* HTML Event Methods
* AJAX (what is this?)
* Utilities (what exactly does this refer to?)

######How to install jQuery
* Download jQuery library from jQuery.com
	* downloaded file must be in the same direcotry as the web-pages requiring it
	* *syntax:* <head><script src="jquery-1.12.4.min.js"></script></head>
* Include jQuery from a CDN (content delivery network)
	* <head><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script></head>

###### jQuery Syntax
* *Basic Syntax:*
	*$(selector).action()
		* The $ sign defines/accesses jQuery
		* The (selector) queries or finds a specified HTML element
		* The action() defines the intended behavior of the selector specified
			*ex. $(this).hide() - hides the current element
* **Important note:**
	*All jQuery should be contained within the following method to prevent any jQuery code from running before the document is finished loading. If this is not done you can run into problems like trying to hide an element before it is loaded etc...
		* **easier to understand the context**
		$(document).ready(function() {
			//jQuery methods
		})
		* **accomplishes the same goal with less code but is also less contextually explicit**
		$(function() {
			//jQuery methods
		})
* **Important note:**
	*If you want to maintain a set of jQuery methods consistently across multiple files then it is a good practice to create a separate .js file specifically for jQuery methods (instead of putting them in each pages <head> tag).
	* ex. <head><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script><script src="my_jquery_functions.js"></script></head>
