import 'package:merge_sort/merge_sort_2.dart' as challenge2;

/// In this chapter you created a `_merge` function that merges two
/// sorted lists. The challenge here is to generalize `_merge` so that
/// it takes two iterables as inputs rather than lists. Here’s the
/// function signature to start off:
///
/// ```
/// List<E> _merge<E extends Comparable<dynamic>>(
///   Iterable<E> first,
///   Iterable<E> second,
/// )
/// ```
void main() {
  // See lib/merge_sort_2.dart for the source code.
  final list = [7, 2, 6, 3, 9];
  final sorted = challenge2.mergeSort(list);
  print(sorted);
}
