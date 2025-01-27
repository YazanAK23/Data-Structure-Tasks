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

  // Function to remove all occurrences of a specific element
  void removeAllOccurrences(T element) {
    // Handle the case where the list is empty
    if (head == null) {
      print('The list is empty.');
      return;
    }

    // Handle removing occurrences at the head
    while (head != null && head!.data == element) {
      head = head!.next;
    }

    // Traverse the list and remove occurrences
    Node<T>? current = head;
    Node<T>? prev = null;

    while (current != null) {
      if (current.data == element) {
        prev!.next = current.next;  // Remove current node
      } else {
        prev = current;  // Move prev pointer
      }
      current = current.next;  // Move current pointer
    }
  }

  // Function to print the linked list
  void printList() {
    Node<T>? current = head;
    if (current == null) {
      print('The list is empty.');
      return;
    }
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
  linkedList.add(20);
  linkedList.add(40);
  linkedList.add(20);

  // Print the original linked list
  print('Original Linked List:');
  linkedList.printList();

  // Remove all occurrences of 20
  linkedList.removeAllOccurrences(20);

  // Print the linked list after removal
  print('Linked List after removing 20:');
  linkedList.printList();
}
