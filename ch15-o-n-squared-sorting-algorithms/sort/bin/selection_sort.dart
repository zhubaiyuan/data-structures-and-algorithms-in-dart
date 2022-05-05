import 'package:sort/swap.dart';

/// Here's a list of randomly distributed elements:
///
/// [4, 2, 5, 1, 3]
///
/// Work out by hand the steps that a selection sort would perform on
/// this list.
void main() {
  selectionSort([4, 2, 5, 1, 3]);
}

void selectionSort<E extends Comparable<dynamic>>(List<E> list) {
  print('\n--- SELECTION SORT ---\n');
  print('$list // start\n');
  for (var current = 0; current < list.length - 1; current++) {
    var lowest = current;
    for (var next = current + 1; next < list.length; next++) {
      final comparison = '${list[next]}-${list[lowest]}';
      if (list[next].compareTo(list[lowest]) < 0) {
        print('$list // compare $comparison, lowest: ${list[next]}');
        lowest = next;
      } else {
        print('$list // compare $comparison, lowest: ${list[lowest]}');
      }
    }
    print('');
    if (lowest != current) {
      list.swap(lowest, current);
      final comparison = '${list[lowest]}-${list[current]}';
      print('// swap $comparison, reset lowest: ${list[current + 1]}');
    } else if (current == list.length - 2) {
      print('// no swap needed');
    } else {
      print('// no swap needed, reset lowest: ${list[current + 1]}');
    }
    print('');
  }
}
