/// In this chapter, you implemented binary search as an extension
/// of `List`. Since binary search only works on sorted lists, exposing
/// `binarySearch` for every list (including unsorted ones) opens it up
/// to being misused.
///
/// Your challenge is to implement binary search as a free function.
void main() {
  final list = [1, 5, 15, 17, 19, 22, 24, 31, 105, 150];
  final index = binarySearch(list, 31);
  print('Found at index $index');
}

int? binarySearch<E extends Comparable<dynamic>>(
  List<E> list,
  E value, [
  int? start,
  int? end,
]) {
  final startIndex = start ?? 0;
  final endIndex = end ?? list.length;
  if (startIndex >= endIndex) {
    return null;
  }
  final size = endIndex - startIndex;
  final middle = startIndex + size ~/ 2;
  if (list[middle] == value) {
    return middle;
  } else if (value.compareTo(list[middle]) < 0) {
    return binarySearch(list, value, startIndex, middle);
  } else {
    return binarySearch(list, value, middle + 1, endIndex);
  }
}
