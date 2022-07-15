String reverse(String input) {
  String newInput = "";
  for (var i = input.length - 1; i >= 0; i--) {
    newInput = newInput + input[i];
  }
  return newInput;
}

String reverse2(String input) {
  var newInput = input.split('');
  var stringNew = newInput.reversed.join();
  return stringNew;
}

String reverse3(String input) {
  return input.split('').reversed.join();
}
