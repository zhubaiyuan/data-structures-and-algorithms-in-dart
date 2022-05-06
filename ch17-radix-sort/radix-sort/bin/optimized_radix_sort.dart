import 'package:radix_sort/radix_sort.dart';

/// Given the following list:
///
/// [88, 410, 1772, 20, 123456789876543210]
///
/// Your current implementation of `radixSort` would take 18 rounds, 14 of
/// which are completely unnecessary. How could you optimize radix sort
/// for cases where a single number is much larger than the others.
void main() {
  // Run this code to see the number of rounds that both versions of
  // the algorithm take.
  var list = [88, 410, 1772, 20, 123456789876543210];
  list.unoptimizedRadixSort();
  print(list);
  list = [88, 410, 1772, 20, 123456789876543210];
  list.optimizedRadixSort();
  print(list);
}
