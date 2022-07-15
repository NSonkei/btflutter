// --- Directions
// Given a string, return the character that is most
// commonly used in the string.
// --- Examples
// maxChar("abcccccccd") === "c"
// maxChar("apple 1231111") === "1"

String maxChar(String input) {
  var mapChar = <String,int>{};
  late String charMax;
  var max = 0;
  for (var i in input.split('')){
    
    if (mapChar.containsKey(i)){
      var sum = mapChar[i] ?? 0;
      mapChar[i] = sum + 1;
    } else {
      mapChar[i] = 1;
    }
    
    var numAppearOfChar = mapChar[i] ?? 0;
    
    if (numAppearOfChar > max){
      charMax=i;
      max = numAppearOfChar;
    } 
  }
  return charMax;
}
