// adding a heading to the page

var paragraph1 = document.getElementById("paragraph1");
paragraph1.insertAdjacentHTML('beforebegin', '<h1>Header</h1>');

// adding an event listener to the page

paragraph1.addEventListener('mouseover', function() {
  console.log('You moused over!');
});
