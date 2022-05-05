import 'package:binary_search/find_range.dart';

/// Write a function that searches a sorted list and finds the range of
/// indices for a particular element. You can start by creating a class
/// named `Range` that holds the start and end indices.
///
/// For example:
///
/// ```
/// final list = [1, 2, 3, 3, 3, 4, 5, 5];
/// final range = findRange(list, value: 3);
/// ```
///
/// `findRange` should return `Range(2, 5)` since those are the start and
/// end indices for the value `3`.
void main() {
  final list = [1, 2, 3, 3, 3, 4, 5, 5];
  var range = findRangeUnoptimized(list, 3);
  print(range);
  range = findRange(list, 3);
  print(range);
}
