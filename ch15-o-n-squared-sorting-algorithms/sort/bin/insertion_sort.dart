import 'package:sort/swap.dart';

/// Here's a list of randomly distributed elements:
///
/// [4, 2, 5, 1, 3]
///
/// Work out by hand the steps that an **insertion sort** would take to sort
/// this list.
void main() {
  insertionSort([4, 2, 5, 1, 3]);
}

void insertionSort<E extends Comparable<dynamic>>(List<E> list) {
  print('\n--- INSERTION SORT ---\n');
  print('$list // start\n');
  for (var current = 1; current < list.length; current++) {
    for (var shifting = current; shifting > 0; shifting--) {
      if (list[shifting].compareTo(list[shifting - 1]) < 0) {
        list.swap(shifting, shifting - 1);
        print('$list // ${list[shifting]}-${list[shifting - 1]} swapped');
      } else {
        print('$list // ${list[shifting - 1]}-${list[shifting]} not swapped');
        break;
      }
    }
    print('');
  }
}
