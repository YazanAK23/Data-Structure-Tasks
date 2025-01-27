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
}

// Function to check if parentheses are balanced
bool isBalancedParentheses(String input) {
  // Create a stack to track the opening parentheses
  Stack<String> stack = Stack<String>();

  // Iterate over each character in the input string
  for (var char in input.split('')) {
    // If it's an opening parenthesis, push it onto the stack
    if (char == '(') {
      stack.push(char);
    }
    // If it's a closing parenthesis, check for a matching opening parenthesis
    else if (char == ')') {
      // If the stack is empty, it means there's no matching opening parenthesis
      if (stack.isEmpty) {
        return false;
      }
      // Pop the stack as we found a matching pair of parentheses
      stack.pop();
    }
  }

  // If the stack is empty, the parentheses are balanced
  return stack.isEmpty;
}

void main() {
  String input = "(())(())";

  print('Input String: $input');
  print('Balanced Parentheses: ${isBalancedParentheses(input)}');
}
