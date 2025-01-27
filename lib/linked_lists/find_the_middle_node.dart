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

  // Function to find the middle node using slow and fast pointer approach
  Node<T>? findMiddle() {
    if (head == null) {
      return null; // Return null if the list is empty
    }

    Node<T>? slow = head;
    Node<T>? fast = head;

    // Traverse the list with slow moving one step and fast moving two steps
    while (fast != null && fast.next != null) {
      slow = slow!.next; // Move slow by one step
      fast = fast.next!.next; // Move fast by two steps
    }

    return slow; // Slow will be at the middle node
  }

  // Function to print the data of the middle node
  void printMiddle() {
    Node<T>? middleNode = findMiddle();
    if (middleNode != null) {
      print('Middle Node: ${middleNode.data}');
    } else {
      print('The list is empty.');
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

  // Print the middle node
  linkedList.printMiddle();
}
