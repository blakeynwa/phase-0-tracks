/*
Release 0 pseudocode:
Create an array with words or phrases of various length using var longWords
For the quickest way to access the longest word, sort the strings in the array
in descending order based on length. What this will look like: if the array contains
the words "toast", "hi", "computer", and "coffee", the sort function will change the 
array order to "hi", "toast", "coffee", and "computer". In order to accomplish this, 
create a sort function that compares strings in their indexes (in this case function
(a, b)). In the function, pass a parameter that is "return b.length - a.length," that 
will sort the array in descending order of length. According to the MDN resources, 
if the outcome of b.length - a.length is negative, it will sort 'b' to a lower index
than 'a', which is exactly what we're trying to accomplish. Once sorting is complete, 
log the 0 index string to the console.

Release 1 pseudocode:
Create a function that checks 2 objects for a matching key-value pair. If 
the function is called with {name: "Steven", age: 54} and {name: "Tamir", age: 54},
the function will return true.  */

//Functions, Arrays, Objects

var longWords = ["hi", "toast", "coffee", "computer"]
var otherWords = ["hello", "dinosaur", "pacific ocean", "california"]
var moreWords = ["burrito", "taco", "margarita", "Central America"]



function longestWord(arry) {
  var currentLongest = arry.sort(function(a, b) { return b.length - a.length; });
  return currentLongest[0];
}


function matchNameAge(a, b) {
  for(i in a) {
  (i, a[i]);
} 
 for(j in b) {
   (j, b[j]);
 }
 if (a[i] == b[j]) {
   return true;
 } 
 return false;
}


//Driver Code

console.log(longestWord(longWords));
console.log(longestWord(otherWords));
console.log(longestWord(moreWords));

//true match
console.log(matchNameAge({name: "Steven", age: 54}, {name: "Tamir", age: 54}));
//false match
console.log(matchNameAge({name: "Steven", age: 53}, {name: "Tamir", age: 54}));