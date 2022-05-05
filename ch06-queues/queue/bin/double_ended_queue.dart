import 'package:queue/doubly_linked_list.dart';

/// A doubled-ended queue — a.k.a. **deque** — is, as its name suggests, a
/// queue where elements can be added or removed from the front or back.
///
/// - A queue (FIFO order) allows you to add elements to the back and remove
///   from the front.
/// - A stack (LIFO order) allows you to add elements to the back, and remove
///   from the back.
///
/// Deque can be considered both a queue and a stack at the same time.
///
/// Your challenge is to build a deque. Below is a simple `Deque` interface to
/// help you build your data structure. The enum `Direction` describes whether
/// you are adding or removing an element from the front or back of the deque.
/// You can use any data structure you prefer to construct a `Deque`.
///
/// ```
/// enum Direction {
///   front,
///   back,
/// }
///
/// abstract class Deque<E> {
///   bool get isEmpty;
///   E? peek(Direction from);
///   bool enqueue(E element, Direction to);
///   E? dequeue(Direction from);
/// }
/// ```
void main() {
  final deque = DequeDoublyLinkedList<int>();
  deque.enqueue(1, Direction.back);
  deque.enqueue(2, Direction.back);
  deque.enqueue(3, Direction.back);
  deque.enqueue(4, Direction.back);
  print(deque);

  deque.enqueue(5, Direction.front);
  print(deque);

  deque.dequeue(Direction.back);
  deque.dequeue(Direction.back);
  deque.dequeue(Direction.back);
  deque.dequeue(Direction.front);
  deque.dequeue(Direction.front);
  deque.dequeue(Direction.front);
  print(deque);
}

enum Direction {
  front,
  back,
}

abstract class Deque<E> {
  bool get isEmpty;
  E? peek(Direction from);
  bool enqueue(E element, Direction to);
  E? dequeue(Direction from);
}

class DequeDoublyLinkedList<E> implements Deque<E> {
  final _list = DoublyLinkedList<E>();

  @override
  E? dequeue(Direction from) {
    switch (from) {
      case Direction.front:
        return _list.pop();
      case Direction.back:
        return _list.removeLast();
    }
  }

  @override
  bool enqueue(E value, Direction to) {
    switch (to) {
      case Direction.front:
        _list.push(value);
        break;
      case Direction.back:
        _list.append(value);
        break;
    }
    return true;
  }

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? peek(Direction from) {
    switch (from) {
      case Direction.front:
        return _list.head?.value;
      case Direction.back:
        return _list.tail?.value;
    }
  }

  @override
  String toString() => _list.toString();
}
