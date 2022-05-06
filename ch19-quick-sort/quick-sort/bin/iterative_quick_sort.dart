import 'package:quick_sort/quick_sort.dart';

/// In this chapter, you learned how to implement quicksort recursively.
/// Your challenge here is to implement it iteratively. Choose any
/// partition strategy.
void main() {
  final list = [8, 2, 10, 0, 9, 18, 9, -1, 5];
  quicksortIterativeLomuto(list);
  print(list);
}
