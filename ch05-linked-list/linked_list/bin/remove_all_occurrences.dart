import 'package:linked_list/linked_list.dart';

/// Create a function that removes all occurrences of a specific element
/// from a linked list. The implementation is similar to the removeAfter
/// method that you implemented for the linked list. For example:
///
/// ```
/// original list
/// 1 -> 3 -> 3 -> 3 -> 4
///
/// list after removing all occurrences of 3
/// 1 -> 4
/// ```
void main() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(2);
  list.push(1);
  list.push(1);
  list.removeAll(3);
  print(list);
}

extension RemovableLinkedList<E> on LinkedList {
  void removeAll(E value) {
    while (head != null && head!.value == value) {
      head = head!.next;
    }
    var previous = head;
    var current = head?.next;
    while (current != null) {
      if (current.value == value) {
        previous?.next = current.next;
        current = previous?.next;
        continue;
      }
      previous = current;
      current = current.next;
    }
    tail = previous;
  }
}

// extension RemovableLinkedList<E> on LinkedList {
//   void removeAll(E value) {
//     while (head != null && head!.value == value) {
//       head = head!.next;
//     }
//     var previous = head;
//     var current = head?.next;
//     while (current != null) {
//       if (current.value == value) {
//         previous?.next = current.next;
//         current = previous?.next;
//         continue;
//       }
//       previous = current;
//       current = current.next;
//     }
//     tail = previous;
//   }
// }