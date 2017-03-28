//Pseudocode
//define a function called reverse
//After doing some research through MDN, I realized there is indeed
//a built in reverse in js - but it's for arrays, not strings.
//Thinking similar to ruby, I'm going to split the string so each 
//characters goes into an array. Then I'll reverse the array, which 
//should return the array with the characters reversed, and finally 
//I'll join the array into a single string, which should provide the reversed
//string with no spaces. 

function reverse(string) {
  return string.split("").reverse().join("");

}

console.log(reverse("hello"));

var reversedWord = reverse("devbootcamp")

if (1 == 1) {
  console.log(reversedWord);
} else {
  console.log("Sorry, that's not true!")
}