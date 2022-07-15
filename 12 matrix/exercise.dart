/// --- Directions
// Write a function that accepts an integer N
// and returns a NxN spiral matrix.
// --- Examples
//   matrix(2)
//     [[1, 2],     22    passes 1 + 1
//     [4, 3]]      11
//   matrix(3)
//     [[1, 2, 3],  333   passes 1 + 2 * 2
//     [8, 9, 4],   112
//     [7, 6, 5]]   222
//  matrix(4)
//     [[1,   2,  3, 4],   4444 passes 1 + 3 * 2
//     [12, 13, 14, 5],   2223
//     [11, 16, 15, 6],   2113
//     [10,  9,  8, 7]]   3333

enum Direction {
  right,
  down,
  left,
  up,
}

class Matrix2d {
  int size;
  List<List<int>>? array;

  Matrix2d(this.size, {this.array});

  factory Matrix2d.spiral(int size) {
    //Init 2d array
    List<List<int>> array = [];
    for (var i = 1; i <= size; i++) {
      List<int> subArray = List<int>.filled(size, -1);
      array.add(subArray);
    }
    int left = 0;
    int right = size - 1;
    int bottom = size - 1;
    int top = 0;
    int index = 1;
    while (true) {
      //Run on top -> right
      for (var i = left; i <= right; i++) {
        array[top][i] = index;
        index++;
      }
      top++;
      if (top > bottom) break;

      //Run on right -> bottom
      for (var i = top; i <= bottom; i++) {
        array[i][right] = index;
        index++;
      }
      right--;
      if (right < left) break;

      //Run on bottom -> left
      for (var i = right; i >= left; i--) {
        array[bottom][i] = index;
        index++;
      }
      bottom--;
      if (bottom < top) break;

      //Run on left -> top
      for (var i = bottom; i >= top; i--) {
        array[i][left] = index;
        index++;
      }
      left++;
      if (left > right) break;
    }
    return Matrix2d(size, array: array);
  }
}

List<List<int>> matrix(int size) {
  Matrix2d array2d = Matrix2d.spiral(size);
  List<List<int>> result = array2d.array ?? [];
  return result;
}
