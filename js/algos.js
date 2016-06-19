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
      console.log(key);
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
  console.log(keyValueMatch);
}

// driver code
// longestPhraseFinder(["long phrase", "longest phrase", "longer phrase"]);
// longestPhraseFinder(["supercallifragilistic", "supercall", "supercallifragilisticexpealladocious", "expeallodocious", "super"]);
// longestPhraseFinder(["short", "even shorter", "absolute shortest", "the preceding statements are false"]);
// longestPhraseFinder(["this", "is", "small"])
objectMatcher({ name: "Steven", age: 54 }, { name: "Tamir", age: 54 });
objectMatcher({ name: "Steven", age: 54 }, { name: "Tamir", age: 17 });
objectMatcher({ food: "olives", flavor: "briny" }, { food: "pickles", flavor: "briny" });
objectMatcher({ food: "olives", flavor: "briny" }, { food: "candy", flavor: "sweet" });
objectMatcher({ key: "value", key2: "value2", key3: "value3" }, { key4: "value4", key5: "value3" })
