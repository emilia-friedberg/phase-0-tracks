//write a function that takes a string as a parameter and reverses it:
// declare a new empty variable
// starting from the last letter of the string, add each character to the new variable until all letters have been added
// return the new variable

function reverse(str) {
    var reversedStr = "";
    for (var i = str.length - 1; i >= 0; i--) {
        reversedStr += str[i];
    }
    return reversedStr
}

// driver code:
var reversedFriend = reverse("friend");

if (1 == 1) {
    console.log(reversedFriend);
} else if (1 != 1) {
    console.log("Weird...");
} else {
    console.log("Something is wrong here.");
}
