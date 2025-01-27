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

  // Function to reverse the linked list
  void reverse() {
    Node<T>? prev = null;
    Node<T>? current = head;
    Node<T>? next = null;

    // Traverse the list and reverse the links
    while (current != null) {
      next = current.next;  // Save the next node
      current.next = prev;  // Reverse the current node's pointer
      prev = current;       // Move the prev pointer one step ahead
      current = next;       // Move the current pointer one step ahead
    }

    // After the loop, prev will be the new head
    head = prev;
  }

  // Function to print the linked list
  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList<int> linkedList = LinkedList<int>();

  // Add nodes to the linked list
  linkedList.add(10);
  linkedList.add(20);
  linkedList.add(30);
  linkedList.add(40);
  linkedList.add(50);

  // Print the original linked list
  print('Original Linked List:');
  linkedList.printList();

  // Reverse the linked list
  linkedList.reverse();

  // Print the reversed linked list
  print('Reversed Linked List:');
  linkedList.printList();
}
