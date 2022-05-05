import 'package:heap/heap.dart';

/// Write a method that combines two heaps.
void main() {
  // See heap.dart for the implementation.
  final listA = [21, 10, 18, 5, 3, 100, 1];
  final listB = [30, 9, 4, 2, 70, 99];
  final heap = Heap(elements: listA);
  heap.merge(listB);
  print(heap);
}
