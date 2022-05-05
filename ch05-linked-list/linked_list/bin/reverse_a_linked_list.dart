import 'package:linked_list/linked_list.dart';

/// Create a function that reverses a linked list. You do this by
/// manipulating the nodes so that they’re linked in the other direction.
/// For example:
///
/// before
/// 1 -> 2 -> 3 -> null
///
/// after
/// 3 -> 2 -> 1 -> null
void main() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print('Original list: $list');
  list.reverse();
  print('Reversed list: $list');
}

extension ReversibleLinkedList<E> on LinkedList<E> {
  // void reverse() {
  //   final tempList = LinkedList<E>();
  //   for (final value in this) {
  //     tempList.push(value);
  //   }
  //   head = tempList.head;
  // }

  void reverse() {
    tail = head;
    var previous = head;
    var current = head?.next;
    previous?.next = null;
    while (current != null) {
      final next = current.next;
      current.next = previous;
      previous = current;
      current = next;
    }
    head = previous;
  }
}
