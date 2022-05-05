/// Write a function to check if a given list is a min-heap.
void main() {
  print(isMinHeap([1, 3, 18, 5, 10, 100, 21]));
  print(isMinHeap([10, 3, 18, 5, 10, 100, 21]));
}

bool isMinHeap<E extends Comparable<dynamic>>(List<E> elements) {
  if (elements.isEmpty) return true;
  final start = elements.length ~/ 2 - 1;
  for (var i = start; i >= 0; i--) {
    final left = 2 * i + 1;
    final right = 2 * i + 2;
    if (elements[left].compareTo(elements[i]) < 0) {
      return false;
    }
    if (right < elements.length && elements[right].compareTo(elements[i]) < 0) {
      return false;
    }
  }
  return true;
}
