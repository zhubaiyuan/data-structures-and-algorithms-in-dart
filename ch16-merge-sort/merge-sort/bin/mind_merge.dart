import 'package:merge_sort/merge_sort_1.dart' as challenge1;

/// Given the following list:
///
/// [4, 2, 5, 1, 3]
///
/// Work through the steps merge sort would take. Go slowly enough for
/// your brain to understand what's happening. You'll have the easiest
/// time if you use breakpoints in your IDE or add `print` statements
/// to your code.
void main() {
  // See the lib/merge_sort_1.dart source code for the placement of the
  // `print` statements.
  final list = [4, 2, 5, 1, 3];
  final sorted = challenge1.mergeSort(list);
  print(sorted);
}
