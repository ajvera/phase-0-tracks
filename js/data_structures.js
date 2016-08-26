var colors = ["blue","magenta","aquamarine","mahogany"];
var horseNames = ["China White","H","Ed","Horsie the Horse"];

colors.push("glacial blue");
horseNames.push("Henrietta");

var farm = {};

for (var i = 0; i < colors.length; i++) {
	farm[horseNames[i]] = colors[i];
}

function Car(yearMade,model,capacity) {
	console.log('This car is', this);

	this.yearMade = yearMade;
	this.model = model;
	this.capacity = capacity

	this.summary = function() {
		console.log('This car was made in ' + this.yearMade
			+ ', is a ' + this.model + ' model and seats '
			+ this.capacity + ' people.');
	}
}

var lemon = new Car(1968,'ford focus', 2);
console.log(lemon);
lemon.summary();

var myCar = new Car(1990, 'Honda Accord', '5 technically but 4 really');
myCar.summary();

var dreamCar = new Car(2025,'tesla tank edition', 8000);
dreamCar.summary();

for (name in farm) {
	console.log(name);
}