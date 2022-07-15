// --- Directions
// Given an integer, return an integer that is the reverse
// ordering of numbers.
// --- Examples
//   reverseInt(15) === 51
//   reverseInt(981) === 189
//   reverseInt(500) === 5
//   reverseInt(-15) === -51
//   reverseInt(-90) === -9

int reverseInt(int n) {
  String intString = n.toString();
  bool isNegative = false;
  if (intString[0] == '-') {
    isNegative = true;
    intString = intString.substring(1);
  }
  int newInt = int.parse(intString.split('').reversed.join());
  if (isNegative) {
    return -newInt;
  } else {
    return newInt;
  }
}

int reverseIntInOneLine(int n) {
  return n.isNegative
      ? -int.parse(n.abs().toString().split('').reversed.join())
      : int.parse(n.toString().split('').reversed.join());
}
