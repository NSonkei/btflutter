// --- Directions
// Given an array and chunk size, divide the array into many subarrays
// where each subarray is of length size
// --- Examples
// chunk([1, 2, 3, 4], 2) --> [[ 1, 2], [3, 4]]
// chunk([1, 2, 3, 4, 5], 2) --> [[ 1, 2], [3, 4], [5]]
// chunk([1, 2, 3, 4, 5, 6, 7, 8], 3) --> [[ 1, 2, 3], [4, 5, 6], [7, 8]]
// chunk([1, 2, 3, 4, 5], 4) --> [[ 1, 2, 3, 4], [5]]
// chunk([1, 2, 3, 4, 5], 10) --> [[ 1, 2, 3, 4, 5]]

List<List<int>> chunk(List<int> array, size) {
  List<List<int>> newList = [];

  //Because type of size is num, it will error when compile, i must parse size to int
  int sizeOfSubArray = int.parse(size.toString());
  int lengthOfArray = array.length;

  //Get ceil in loop
  int loop = (lengthOfArray / sizeOfSubArray).ceil();

  for (var i = 1; i <= loop; i++) {
    int start = (i - 1) * sizeOfSubArray;
    int end = sizeOfSubArray * i;
    if (end > lengthOfArray) end = lengthOfArray;
    newList.add(array.sublist(start, end));
  }
  return newList;
}
