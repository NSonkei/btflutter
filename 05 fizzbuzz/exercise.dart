// --- Directions
// Write a program that console logs the numbers
// from 1 to n. But for multiples of three print
// “fizz” instead of the number and for the multiples
// of five print “buzz”. For numbers which are multiples
// of both three and five print “fizzbuzz”.
// --- Example
//   fizzBuzz(5);
//   1
//   2
//   fizz
//   4
//   buzz

fizzBuzz(maxN, {Function(String)? printForUnitTest}) {
  for (var i = 1; i <= maxN; i++) {
    final iModThree = i % 3 == 0;
    final iModFive = i % 5 == 0;
    if (iModThree && iModFive) {
      printForUnitTest!('fizzbuzz');
    } else if (iModThree) {
      printForUnitTest!('fizz');
    } else if (iModFive) {
      printForUnitTest!('buzz');
    } else {
      printForUnitTest!('$i');
    }
  }
}
