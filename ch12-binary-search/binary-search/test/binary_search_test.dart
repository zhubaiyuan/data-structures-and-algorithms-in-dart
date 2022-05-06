import 'package:binary_search/binary_search.dart';
import 'package:binary_search/find_range.dart';
import 'package:test/test.dart';

void main() {
  group('binarySearch:', () {
    test('empty list', () {
      final list = <int>[];
      expect(list.binarySearch(1), isNull);
    });

    test('normal list', () {
      final list = [1, 5, 15, 17, 19, 22, 24, 31, 105, 150];
      expect(list.binarySearch(1), 0);
      expect(list.binarySearch(5), 1);
      expect(list.binarySearch(15), 2);
      expect(list.binarySearch(17), 3);
      expect(list.binarySearch(19), 4);
      expect(list.binarySearch(22), 5);
      expect(list.binarySearch(24), 6);
      expect(list.binarySearch(31), 7);
      expect(list.binarySearch(105), 8);
      expect(list.binarySearch(150), 9);
      expect(list.binarySearch(-1), isNull);
      expect(list.binarySearch(100), isNull);
    });
  });

  group('findRange:', () {
    test('empty list', () {
      final list = <int>[];
      final range = findRange(list, 3);
      expect(range, isNull);
    });

    test('not in list', () {
      final list = [1, 3, 3, 3, 4];
      final range = findRange(list, 5);
      expect(range, isNull);
    });

    test('middle of list', () {
      final list = [1, 3, 3, 3, 4];
      final range = findRange(list, 3);
      expect(range!.start, 1);
      expect(range.end, 4);
    });

    test('beginning of list', () {
      final list = [3, 3, 3, 4];
      final range = findRange(list, 3);
      expect(range!.start, 0);
      expect(range.end, 3);
    });

    test('end of list', () {
      final list = [1, 3, 3, 3];
      final range = findRange(list, 3);
      expect(range!.start, 1);
      expect(range.end, 4);
    });

    test('whole list', () {
      final list = [3, 3, 3];
      final range = findRange(list, 3);
      expect(range!.start, 0);
      expect(range.end, 3);
    });

    test('single value in middle of list', () {
      final list = [1, 3, 4];
      final range = findRange(list, 3);
      expect(range!.start, 1);
      expect(range.end, 2);
    });

    test('single value in list', () {
      final list = [3];
      final range = findRange(list, 3);
      expect(range!.start, 0);
      expect(range.end, 1);
    });

    test('handles empty range', () {
      final list = [0, 1, 3, 3];
      final range = findRange(list, 2);
      expect(range, null);
    });

    test('handles finding first item in list of length 2', () {
      final list = [0, 1];
      final range = findRange(list, 0);
      expect(range!.start, 0);
      expect(range.end, 1);
    });
  });
}
