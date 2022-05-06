import 'package:heap_sort/heap_sort.dart';

void main() {
  heapsortUsingHeap();
  inPlaceHeapsort();
}

void heapsortUsingHeap() {
  final sorted = heapsort([6, 12, 2, 26, 8, 18, 21, 9, 5]);
  print(sorted);
}

void inPlaceHeapsort() {
  final list = [6, 12, 2, 26, 8, 18, 21, 9, 5];
  print(list);
  list.heapsortInPlace();
  print(list);
}
