import 'package:heap_sort/heap_sort.dart';

/// When performing heapsort in ascending order, which of these starting
/// lists requires the fewest comparisons?
///
/// - `[1, 2, 3, 4, 5]`
/// - `[5, 4, 3, 2, 1]`
///
/// You can assume that the implementation uses a max-heap.
void main() {
  var list = [5, 4, 3, 2, 1];
  print(list);
  list.heapsortInPlace();
  print(list);
  print('---');
  list = [1, 2, 3, 4, 5];
  print(list);
  list.heapsortInPlace();
  print(list);
}
