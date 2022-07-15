class Stack {
  late List<dynamic> list;
  Stack({List<dynamic>? listInput}) {
    if (listInput != null) {
      this.list = listInput;
    } else {
      this.list = [];
    }
  }

  void push(dynamic value) {
    this.list.add(value);
  }

  dynamic pop() {
    dynamic result;
    int lengthOfList = this.list.length;
    if (lengthOfList > 0) {
      result = this.list.elementAt(lengthOfList - 1);
      this.list.removeLast();
    }
    return result;
  }

  dynamic peek() {
    dynamic result;
    int lengthOfList = this.list.length;
    if (lengthOfList > 0) result = this.list.elementAt(lengthOfList - 1);
    return result;
  }
}
