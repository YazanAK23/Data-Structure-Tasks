// Stack class to encapsulate stack behavior
class Stack<T> {
  final List<T> _items = [];

  // Push an item onto the stack
  void push(T item) {
    _items.add(item);
  }

  // Pop an item from the stack
  T pop() {
    if (_items.isEmpty) {
      throw RangeError('Stack is empty');
    }
    return _items.removeLast();
  }

  // Check if the stack is empty
  bool get isEmpty => _items.isEmpty;

  // Get the size of the stack
  int get size => _items.length;
}

// Function to reverse a list using a stack
void reverseList(List<dynamic> list) {
  // Create a stack to store list elements
  Stack<dynamic> stack = Stack<dynamic>();

  // Push all list elements onto the stack
  for (var item in list) {
    stack.push(item);
  }

  // Pop elements from the stack and print them in reverse order
  while (!stack.isEmpty) {
    print(stack.pop());
  }
}

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  print('Original List: $numbers');
  print('Reversed List: ');
  reverseList(numbers);
}
