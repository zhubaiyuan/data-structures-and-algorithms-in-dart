import 'package:linked_list/linked_list.dart';

/// Create a function that finds the middle node of a linked list.
/// For example:
///
/// 1 -> 2 -> 3 -> 4 -> null
/// middle is 3
///
/// 1 -> 2 -> 3 -> null
/// middle is 2
void main() {
  var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
  print(list);
  final middleNode = getMiddle(list);
  print('Middle: ${middleNode?.value}');
}

Node<E>? getMiddle<E>(LinkedList<E> list) {
  var slow = list.head;
  var fast = list.head;
  while (fast?.next != null) {
    fast = fast?.next?.next;
    slow = slow?.next;
  }
  return slow;
}
