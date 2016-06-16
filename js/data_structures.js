var horseColors = ["tan", "black", "white", "brown"];
var horseNames = ["Ed", "Juliet", "Concho", "Alexander"];

horseColors.push("yellow");
horseNames.push("Wilhelm");

// console.log(horseNames);
// console.log(horseColors);
var horses = {};

for (var i = 0; i < horseNames.length; i++) {
    horses[horseNames[i]] = horseColors[i];
}

// console.log(horses);


// constructor function for car

function Car(make, model, year, engineSound) {
    console.log("Our new car:", this)
    this.make = make;
    this.model = model;
    this.year = year;
    this.engineSound = function() { console.log("Vroom vroom!"); };
}

var myCar = new Car("Kia", "Soul", 2015)
console.log(myCar)
myCar.engineSound()

var oldCar = new Car("Hyundai", "Sonata", 2004)
console.log(oldCar)
oldCar.engineSound()

var futureCar = new Car("Nasa", "Spaceship", 2035)
console.log(futureCar)
futureCar.engineSound()
