// --- Directions
// Write a function that accepts a string.  The function should
// capitalize the first letter of each word in the string then
// return the capitalized string.
// --- Examples
//   capitalize('a short sentence') --> 'A Short Sentence'
//   capitalize('a lazy fox') --> 'A Lazy Fox'
//   capitalize('look, it is working!') --> 'Look, It Is Working!'

String capitalize(String input) {
  //Get each word with different than space
  RegExp exp = RegExp(r'(\S+)');
  Iterable<Match> matches = exp.allMatches(input.toLowerCase());
  //This will be the result of funcction
  List<String> newString = [];
  for (final Match m in matches) {
    //Get match from nullable to nonnull
    String match = m[0]!;
    //Get first word and change this to upper case
    var changeFirstWord = match.trim().split('');
    changeFirstWord[0] = changeFirstWord[0].toUpperCase();
    match = changeFirstWord.join();
    //Add the word after change first letter to Upper to newString
    newString.add(match);
  }
  return newString.join(' ');
}
