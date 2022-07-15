// --- Directions
// Implement a Queue datastructure using two stacks.
// *Do not* create an array inside of the 'Queue' class.
// Queue should implement the methods 'add', 'remove', and 'peek'.
// For a reminder on what each method does, look back
// at the Queue exercise.
// --- Examples
//     const q = new Queue();
//     q.add(1);
//     q.add(2);
//     q.peek();  // returns 1
//     q.remove(); // returns 1
//     q.remove(); // returns 2

import 'stack.dart';

class Queue {
  Stack stack1 = Stack();
  Queue();

  void add(var value) {
    this.stack1.push(value);
  }

  dynamic peek() {
    Stack stack2 = Stack();

    while (this.stack1.peek() != null) {
      stack2.push(this.stack1.pop());
    }

    dynamic result = stack2.peek();

    while (stack2.peek() != null) {
      this.stack1.push(stack2.pop());
    }
    return result;
  }

  dynamic remove() {
    Stack stack2 = Stack();
    while (this.stack1.peek() != null) {
      stack2.push(this.stack1.pop());
    }
    dynamic result = stack2.pop();
    while (stack2.peek() != null) {
      this.stack1.push(stack2.pop());
    }
    return result;
  }
}
