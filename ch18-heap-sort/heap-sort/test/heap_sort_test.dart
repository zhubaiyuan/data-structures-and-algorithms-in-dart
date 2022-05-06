import 'package:heap_sort/heap.dart';
import 'package:heap_sort/heap_sort.dart';
import 'package:heap_sort/heap_sort_descending.dart';
import 'package:test/test.dart';

void main() {
  group('Heap', () {
    test('produces order shown in example image', () {
      final heap = Heap(elements: [6, 12, 2, 26, 8, 18, 21, 9, 5]);
      expect(heap.elements, [26, 12, 21, 9, 8, 18, 2, 6, 5]);
    });
  });

  group('heapsort:', () {
    test('original list not changed', () {
      final list = [1, 3, 2];
      final sorted = heapsort(list);
      expect(list, [1, 3, 2]);
      expect(sorted, [1, 2, 3]);
    });

    test('sorts list - chapter example', () {
      final list = [6, 12, 2, 26, 8, 18, 21, 9, 5];
      final sorted = heapsort(list);
      expect(sorted, [2, 5, 6, 8, 9, 12, 18, 21, 26]);
    });

    test('sorts list - challenge examples', () {
      var list = [1, 2, 3, 4, 5];
      var sorted = heapsort(list);
      expect(sorted, [1, 2, 3, 4, 5]);
      list = [5, 4, 3, 2, 1];
      sorted = heapsort(list);
      expect(sorted, [1, 2, 3, 4, 5]);
    });

    test('empty list', () {
      final list = <int>[];
      final sorted = heapsort(list);
      expect(sorted, <int>[]);
    });
  });

  group('heapsortInPlace', () {
    test('original list changed', () {
      final list = [1, 3, 2];
      list.heapsortInPlace();
      expect(list, [1, 2, 3]);
    });

    test('sorts list - chapter example', () {
      final list = [6, 12, 2, 26, 8, 18, 21, 9, 5];
      list.heapsortInPlace();
      expect(list, [2, 5, 6, 8, 9, 12, 18, 21, 26]);
    });

    test('sorts list - challenge examples', () {
      var list = [1, 2, 3, 4, 5];
      list.heapsortInPlace();
      expect(list, [1, 2, 3, 4, 5]);
      list = [5, 4, 3, 2, 1];
      list.heapsortInPlace();
      expect(list, [1, 2, 3, 4, 5]);
    });

    test('empty list', () {
      final list = <int>[];
      list.heapsortInPlace();
      expect(list, <int>[]);
    });
  });

  group('Challenge 2:', () {
    test('using reversed', () {
      final list = [6, 12, 2, 26, 8, 18, 21, 9, 5];
      final ascending = heapsort(list);
      expect(list, [6, 12, 2, 26, 8, 18, 21, 9, 5]);
      expect(ascending, [2, 5, 6, 8, 9, 12, 18, 21, 26]);
      final descending = ascending.reversed;
      expect(descending, [26, 21, 18, 12, 9, 8, 6, 5, 2]);
    });

    test('reimplementing heapsort', () {
      final list = [6, 12, 2, 26, 8, 18, 21, 9, 5];
      final sorted = descendingHeapsort(list);
      expect(list, [6, 12, 2, 26, 8, 18, 21, 9, 5]);
      expect(sorted, [26, 21, 18, 12, 9, 8, 6, 5, 2]);
    });

    test('reimplementing heapsortInPlace', () {
      final list = [6, 12, 2, 26, 8, 18, 21, 9, 5];
      list.descendingHeapsortInPlace();
      expect(list, [26, 21, 18, 12, 9, 8, 6, 5, 2]);
    });
  });
}
