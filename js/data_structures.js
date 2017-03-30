var colors = ["Blue", "Green", "Red", "Yellow"]
var names = ["Tom", "Greg", "Jerry", "Horse"]

colors.push("Mauve");
names.push("Donald");

horseChar = {}
for (var i = 0; i < names.length; i++) {
  horseChar[names[i]] = colors[i];
}

console.log(horseChar)