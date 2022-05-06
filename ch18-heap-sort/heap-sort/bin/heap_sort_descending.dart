import 'package:heap_sort/heap_sort_descending.dart';
import 'package:heap_sort/heap_sort.dart';

/// The current implementations of heapsort in in this chapter sort the
/// elements in ascending order. How would you sort in descending order?
void main() {
  usingReversed();
  reimplementingHeapsort();
  reimplementingHeapsortInPlace();
}

void usingReversed() {
  print('using reveresed');
  final list = [6, 12, 2, 26, 8, 18, 21, 9, 5];
  final ascending = heapsort(list);
  final descending = ascending.reversed;
  print(list);
  print(ascending);
  print(descending.toList());
}

void reimplementingHeapsort() {
  print('reimplementing heapsort');
  final list = [6, 12, 2, 26, 8, 18, 21, 9, 5];
  final sorted = descendingHeapsort(list);
  print(sorted);
}

void reimplementingHeapsortInPlace() {
  print('reimplementing heapsortInPlace');
  final list = [6, 12, 2, 26, 8, 18, 21, 9, 5];
  list.descendingHeapsortInPlace();
  print(list);
}
