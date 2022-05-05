import 'package:binary_search_tree/binary_node.dart';
import 'package:binary_search_tree/binary_search_tree.dart';

/// Given two binary trees, how would you test if they are equal or not?
void main() {
  final sameOne = BinarySearchTree<int>()
    ..insert(3)
    ..insert(5)
    ..insert(1);
  final sameTwo = BinarySearchTree<int>()
    ..insert(3)
    ..insert(5)
    ..insert(1);
  final different = BinarySearchTree<int>()
    ..insert(7)
    ..insert(9)
    ..insert(0);
  print(treesEqual(sameOne, sameTwo));
  print(treesEqual(sameOne, different));
}

bool treesEqual(BinarySearchTree first, BinarySearchTree second) {
  return _isEqual(first.root, second.root);
}

bool _isEqual(BinaryNode? first, BinaryNode? second) {
  if (first == null || second == null) {
    return first == null && second == null;
  }
  return first.value == second.value &&
      _isEqual(first.leftChild, second.leftChild) &&
      _isEqual(first.rightChild, second.rightChild);
}
