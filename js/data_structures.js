var colors = ["Blue", "Green", "Red", "Yellow"]
var names = ["Tom", "Greg", "Jerry", "Horse"]

colors.push("Mauve");
names.push("Donald");

horseChar = {}
for (var i = 0; i < names.length; i++) {
  horseChar[names[i]] = colors[i];
}

console.log(horseChar)


function Car(make, model, mpg) {
  console.log("This is your new car:");
  this.make = make;
  this.model = model;
  this.mpg = mpg;
  this.backfire = function() { console.log("POW!"); };
  console.log("This completes the creation of your new vehicle.");
}

var newCar = new Car("Honda", "Accord", 35);
console.log("The make of your car is: " + newCar.make);
console.log("The model of your car is: " + newCar.model);
console.log("MPG of your car: " + newCar.mpg);
newCar.backfire();

var anotherOne = new Car("Porsche", "Carrera", 30);
console.log("The make of your car is: " + anotherOne.make);
console.log("The model of your car is: " + anotherOne.model);
console.log("MPG of your car: " + anotherOne.mpg);
anotherOne.backfire();