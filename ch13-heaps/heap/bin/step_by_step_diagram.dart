import 'package:heap/heap.dart';

/// Given the following unsorted list, visually construct a min-heap. Provide a
/// step-by-step diagram of how the min-heap is formed.
///
/// ```
/// [21, 10, 18, 5, 3, 100, 1]
/// ```
void main() {
  // See the Challenge Solutions chapter for the step-by-step diagrams.
  final heap = Heap(
    elements: [21, 10, 18, 5, 3, 100, 1],
    priority: Priority.min,
  );
  print(heap);
}
