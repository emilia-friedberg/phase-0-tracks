// Find the longest phrase
// Input: Array of words or phrases
// Iterate through each value in the array
//  FOR EACH value in the array, take its length, and SAVE it as its value in a new object using the word or phrase as a key
//  FOR EACH value in the array, SAVE its length into a new empty array
// SORT the array containing the phrase or word lengths by length
// SEARCH the object (containing the words or phrases paired with their corresponding lengths) for the word or phrase that corresponds to the longest length
// PRINT that word or phrase
// Output: longest word or phrase


function longestPhraseFinder(array) {
  var phrasesAndLengths = {};
  var phraseLengths = [];
  for (var i = 0; i < array.length; i++) {
    phrasesAndLengths[array[i]] = array[i].length;
    phraseLengths.push(array[i].length);
  }
  var sortedPhraseLengths = phraseLengths.sort(function(a, b) {
    return b - a
  });
  var longestLength = sortedPhraseLengths[0];
  for (var key in phrasesAndLengths) {
    if (phrasesAndLengths.hasOwnProperty(key) && phrasesAndLengths[key] === longestLength) {
      return key;
    }
  }
}



// Compare two objects for shared key-value pair
// Input: two objects
// Iterate through first object to see:
//  IF a key in the first object matches the value of a key in the second object, AND  the values of those respective keys match:
//    THEN it is true that the objects share at least one key-value pair.
//  OTHERWISE
//    It is not true that the objects share at least one key-value pair.
// Output: boolean


function objectMatcher(object1, object2) {
  var object1Keys = [];
  var keyValueMatch = false;
  for (var key in object1) {
    if (object1.hasOwnProperty(key) && object2.hasOwnProperty(key) && (object1[key] === object2[key])) {
      keyValueMatch = true;
    }
  }
  return keyValueMatch;
}

// Generate random test data
// Input: an integer for length
// FOR the number of times specified by the input:
//  Pick a random letter from the alphabet a random number of times between 1 and 10
//  Join those letters as a string
//  Add that string to the array
// Output: array of given length with strings that have a minimum of 1 letter and max of 10 letters

function numberGenerator(min, max) {
  return Math.floor(Math.random() * (max - min)) + min;
}

function letterGenerator() {
  alphabet = "abcdefghijklmnopqrstuvwyxz";
  return alphabet.charAt(numberGenerator(0, 26));
}

function stringGenerator() {
  letterArray = [];
  stringLength = numberGenerator(0, 10);
  for (var i = 0; i <= stringLength; i++) {
    newLetter = letterGenerator();
    letterArray.push(newLetter);
  }
  string = letterArray.join('');
  return string;
}

function arrayOfStringsGenerator(numberOfStrings) {
  arrayOfStrings = [];
  alphabet = "abcdefghijklmnopqrstuvwyxz";
  for (var i = 0; i <= numberOfStrings - 1; i++) {
    arrayOfStrings.push(stringGenerator());
  }
  return arrayOfStrings;
}

// driver code

// testing longestPhraseFinder
// longestPhraseFinder(["long phrase", "longest phrase", "longer phrase"]);
// longestPhraseFinder(["supercallifragilistic", "supercall", "supercallifragilisticexpealladocious", "expeallodocious", "super"]);
// longestPhraseFinder(["short", "even shorter", "absolute shortest", "the preceding statements are false"]);
// longestPhraseFinder(["this", "is", "small"])

// testing objectMatcher
// objectMatcher({ name: "Steven", age: 54 }, { name: "Tamir", age: 54 });
// objectMatcher({ name: "Steven", age: 54 }, { name: "Tamir", age: 17 });
// objectMatcher({ food: "olives", flavor: "briny" }, { food: "pickles", flavor: "briny" });
// objectMatcher({ food: "olives", flavor: "briny" }, { food: "candy", flavor: "sweet" });
// objectMatcher({ key: "value", key2: "value2", key3: "value3" }, { key4: "value4", key5: "value3" })

// testing arrayOfStringsGenerator
// arrayOfStringsGenerator(5)
array1 = arrayOfStringsGenerator(5);
console.log(array1);
console.log(longestPhraseFinder(array1));
array2 = arrayOfStringsGenerator(12);
console.log(array2);
console.log(longestPhraseFinder(array2));
array3 = arrayOfStringsGenerator(100);
console.log(array3);
console.log(longestPhraseFinder(array3));
array4 = arrayOfStringsGenerator(7);
console.log(array4);
console.log(longestPhraseFinder(array4));
array5 = arrayOfStringsGenerator(10000);
console.log(array5);
console.log(longestPhraseFinder(array5));
array6 = arrayOfStringsGenerator(80);
console.log(array6);
console.log(longestPhraseFinder(array6));
array7 = arrayOfStringsGenerator(35);
console.log(array7);
console.log(longestPhraseFinder(array7));
array8 = arrayOfStringsGenerator(19);
console.log(array8);
console.log(longestPhraseFinder(array8));
array9 = arrayOfStringsGenerator(10);
console.log(array9);
console.log(longestPhraseFinder(array9));
array10 = arrayOfStringsGenerator(8);
console.log(array10);
console.log(longestPhraseFinder(array10));
