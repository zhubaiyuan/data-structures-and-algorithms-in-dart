import 'package:radix_sort/radix_sort.dart';

/// Add a `print` statement to your `radixSort` implementation so that it'll
/// tell you what's in the buckets after each round of sorting.
///
/// Do the same for each recursion of `lexicographicalSort`.
///
/// Use the following list for both sorts:
///
/// ```
/// var list = [46, 500, 459, 1345, 13, 999];
/// ```
void main() {
  print('--- LSD-radix sort ---');
  var list = [46, 500, 459, 1345, 13, 999];
  list.radixSort();
  print('--- MSD-radix sort ---');
  list = [46, 500, 459, 1345, 13, 999];
  list.lexicographicalSort();
}
