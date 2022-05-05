import 'package:queue/queue.dart';

/// Given the following queue where the left is the front of the queue and
/// the right is the back:
///
/// SPEED
///
/// Provide step-by-step diagrams showing how the following series of
/// commands affects the queue internally:
///
/// ```
/// queue.enqueue('D');
/// queue.enqueue('A');
/// queue.dequeue();
/// queue.enqueue('R');
/// queue.dequeue();
/// queue.dequeue();
/// queue.enqueue('T');
/// ```
///
/// Do this for each of the following queue implementations:
///
/// 1. List
/// 2. Linked list
/// 3. Ring buffer
/// 4. Double stack
///
/// Assume that the list and ring buffer have an initial size of 5.
void main() {
  enqueueDequeue(QueueList<String>());
  enqueueDequeue(QueueLinkedList<String>());
  enqueueDequeue(QueueRingBuffer<String>(5));
  enqueueDequeue(QueueStack<String>());
}

void enqueueDequeue(Queue<String> queue) {
  queue.enqueue('S');
  queue.enqueue('P');
  queue.enqueue('E');
  queue.enqueue('E');
  queue.enqueue('D');
  print(queue);

  queue.enqueue('D');
  queue.enqueue('A');
  queue.dequeue();
  queue.enqueue('R');
  queue.dequeue();
  queue.dequeue();
  queue.enqueue('T');
}
