/// Does recursion make your brain hurt? No worries, you can always perform
/// the same task in a non-recursive way. Re-implement `binarySearch` using
/// a `while` loop.
void main() {
  final list = [1, 5, 15, 17, 19, 22, 24, 31, 105, 150];
  final index = binarySearch(list, 31);
  print('Found at index $index');
}

int? binarySearch<E extends Comparable<dynamic>>(
  List<E> list,
  E value,
) {
  var start = 0;
  var end = list.length;
  while (start < end) {
    final middle = start + (end - start) ~/ 2;
    if (value == list[middle]) {
      return middle;
    } else if (value.compareTo(list[middle]) < 0) {
      end = middle;
    } else {
      start = middle + 1;
    }
  }
  return null;
}
