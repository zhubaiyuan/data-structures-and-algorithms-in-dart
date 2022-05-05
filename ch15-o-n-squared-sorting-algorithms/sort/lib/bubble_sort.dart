import 'swap.dart';

void bubbleSort<E extends Comparable<dynamic>>(List<E> list) {
  for (var end = list.length - 1; end > 0; end--) {
    var swapped = false;
    for (var current = 0; current < end; current++) {
      if (list[current].compareTo(list[current + 1]) > 0) {
        list.swap(current, current + 1);
        swapped = true;
      }
    }
    if (!swapped) return;
  }
}
