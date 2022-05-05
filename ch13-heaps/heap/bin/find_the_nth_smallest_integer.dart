import 'package:heap/heap.dart';

/// Write a function to find the nth smallest integer in an unsorted list.
/// For example, given the following list:
///
/// ```
/// final integers = [3, 10, 18, 5, 21, 100];
/// ```
///
/// If `n = 3`, the result should be `10`.
void main() {
  final integers = [3, 10, 18, 5, 21, 100];
  print(getNthSmallestElement(3, integers));
}

int? getNthSmallestElement(int n, List<int> elements) {
  var heap = Heap(
    elements: elements,
    priority: Priority.min,
  );
  int? value;
  for (int i = 0; i < n; i++) {
    value = heap.remove();
  }
  return value;
}
