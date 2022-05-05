import 'package:sort/swap.dart';

/// Here's a list of randomly distributed elements:
///
/// [4, 2, 5, 1, 3]
///
/// Work out by hand the steps that a bubble sort would perform on
/// this list.
void main() {
  bubbleSort([4, 2, 5, 1, 3]);
}

void bubbleSort<E extends Comparable<dynamic>>(List<E> list) {
  print('\n--- BUBBLE SORT ---\n');
  print('$list // start\n');
  for (var end = list.length - 1; end > 0; end--) {
    var swapped = false;
    for (var current = 0; current < end; current++) {
      if (list[current].compareTo(list[current + 1]) > 0) {
        list.swap(current, current + 1);
        swapped = true;
        print('$list // ${list[current + 1]}-${list[current]} swapped');
      } else {
        print('$list // ${list[current]}-${list[current + 1]} not swapped');
      }
    }
    if (!swapped) return;
    print('');
  }
}
