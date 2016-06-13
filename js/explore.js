// Ruby has lots of handy functions like.reverse, but in JavaScript, we mostly have to write our own. In comments, pseudocode a
// function that takes a string as a parameter and reverses the string.reverse("hello"),
//     for example, should
// return "olleh".This isn 't a task specific to JavaScript -- your pseudocode should be in plain English and use phrases like "for each" instead of JavaScript-specific terms. Remember that you can add strings in JavaScript, so '
// ' + '
// a ' would result in the string '
// a '. Take your time. This is the most valuable skill in programming: being able to think through a problem logically.

//write a function that takes a string as a parameter and reverses it
// declare a new empty variable
// starting from the last letter of the string, add each character to the new variable until each letter has been added
// print the new variable

function reverse(str) {
    var reversedStr = ""
    for (var i = -1; i > str.length; i--) {
        reversedStr += str[i]
    }
    console.log(reversedStr);
}

// driver code:
reverse("friend")
