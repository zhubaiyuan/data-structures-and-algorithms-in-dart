import 'package:sort/bubble_sort.dart';
import 'package:sort/insertion_sort.dart';
import 'package:sort/selection_sort.dart';

void main() {
  bubbleSortExample();
  selectionSortExample();
  insertionSortExample();
}

void bubbleSortExample() {
  final list = [9, 4, 10, 3];
  print('Original: $list');
  bubbleSort(list);
  print('Bubble sorted: $list');
}

void selectionSortExample() {
  final list = [9, 4, 10, 3];
  print('Original: $list');
  selectionSort(list);
  print('Selection sorted: $list');
}

void insertionSortExample() {
  var list = [9, 4, 10, 3];
  print('Original: $list');
  insertionSort(list);
  print('Insertion sorted: $list');
}
