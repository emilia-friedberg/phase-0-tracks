// Find the longest phrase
// Input: Array of words or phrases
// Iterate through each value in the array
//  For each value in the array, take its length, and save it as its value in a new object using the word or phrase as a key
//  For each value in the array, save its length into a new empty array
// Sort the array containing the phrase or word lengths by length
// Search the object (containing the words or phrases paired with their corresponding lengths) for the word or phrase that corresponds to the longest length
// Print that word or phrase


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

// driver code
longestPhraseFinder(["long phrase", "longest phrase", "longer phrase"]);
longestPhraseFinder(["supercallifragilistic", "supercall", "supercallifragilisticexpealladocious", "expeallodocious", "super"]);
longestPhraseFinder(["short", "even shorter", "absolute shortest", "the preceding statements are false"]);
longestPhraseFinder(["this", "is", "small"])
