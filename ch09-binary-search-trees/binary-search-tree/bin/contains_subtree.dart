import 'package:binary_search_tree/binary_search_tree.dart';

/// Create a method that checks if the current tree contains all the
/// elements of another tree.
void main() {
  final tree = BinarySearchTree<int>()
    ..insert(3)
    ..insert(5)
    ..insert(1)
    ..insert(0)
    ..insert(2);
  final subtree = BinarySearchTree<int>()
    ..insert(1)
    ..insert(0)
    ..insert(2);
  final otherTree = BinarySearchTree<int>()
    ..insert(10)
    ..insert(2)
    ..insert(15);
  print(tree.containsSubtree(subtree));
  print(tree.containsSubtree(otherTree));
}

extension Subtree<E> on BinarySearchTree {
  bool containsSubtree(BinarySearchTree subtree) {
    Set set = <E>{};
    root?.traverseInOrder((value) {
      set.add(value);
    });
    var isEqual = true;
    subtree.root?.traverseInOrder((value) {
      isEqual = isEqual && set.contains(value);
    });
    return isEqual;
  }
}
