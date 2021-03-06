// --- Directions
// Given a string, return true if the string is a palindrome
// or false if it is not.  Palindromes are strings that
// form the same word if it is reversed. *Do* include spaces
// and punctuation in determining if the string is a palindrome.
// --- Examples:
//   palindrome("abba") === true
//   palindrome("abcdefg") === false

bool palindrome(String input) {
  var i = 0;
  var j = input.length - 1;
  while (i < j) {
    if (input[i] != input[j]) {
      return false;
    }
    i++;
    j--;
  }
  return true;
}

bool palindrome2(String input) {
  return input == input.split('').reversed.join();
}
