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
