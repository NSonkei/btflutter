// --- Directions
// Print out the n-th entry in the fibonacci series.
// The fibonacci series is an ordering of numbers where
// each number is the sum of the preceeding two.
// For example, the sequence
//  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
// forms the first ten entries of the fibonacci series.
// Example:
//   fib(4) === 3

int fib(int n) {
  if (n == 1 || n == 2)
    return 1;
  else
    return fib(n - 2) + fib(n - 1);
}

int fib2(int n) {
  var array = [];
  for (var i = 1; i <= n; i++) {
    if (i == 1 || i == 2) {
      array.add(1);
    } else {
      array.add(array[i - 3] + array[i - 2]);
    }
  }
  return array[n - 1];
}
