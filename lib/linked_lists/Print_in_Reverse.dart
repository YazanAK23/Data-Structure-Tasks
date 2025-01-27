// Node class to represent each node in the linked list
class Node<T> {
  T data;
  Node<T>? next;

  Node(this.data, {this.next});
}

// LinkedList class to handle the linked list operations
class LinkedList<T> {
  Node<T>? head;

  // Function to add a node to the linked list
  void add(T data) {
    if (head == null) {
      head = Node<T>(data);
    } else {
      Node<T> current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = Node<T>(data);
    }
  }

  // Recursive function to print the linked list in reverse order
  void printReverse(Node<T>? node) {
    if (node == null) {
      return;
    }
    // Recur for the next node first, printing them in reverse order
    printReverse(node.next);
    // Then print the current node data
    print(node.data);
  }

  // Public function to start the reverse printing from the head node
  void printLinkedListInReverse() {
    printReverse(head);
  }
}

void main() {
  LinkedList<int> linkedList = LinkedList<int>();
  
  // Add nodes to the linked list
  linkedList.add(10);
  linkedList.add(20);
  linkedList.add(30);
  linkedList.add(40);
  
  // Print the linked list in reverse order
  print('Linked List in Reverse Order:');
  linkedList.printLinkedListInReverse();
}
