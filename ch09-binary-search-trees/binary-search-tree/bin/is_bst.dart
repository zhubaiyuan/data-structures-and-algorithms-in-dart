import 'package:binary_search_tree/binary_node.dart';

/// Write a function that checks if a binary tree is a binary search tree.
void main() {
  final goodTree = BinaryNode<int>(4)
    ..leftChild = BinaryNode<int>(3)
    ..rightChild = BinaryNode<int>(4);
  print(goodTree.isBinarySearchTree());

  final badTree = BinaryNode<int>(4)
    ..leftChild = BinaryNode<int>(4)
    ..rightChild = BinaryNode<int>(5);
  print(badTree.isBinarySearchTree());
}

extension Checker<E extends Comparable<dynamic>> on BinaryNode<E> {
  bool isBinarySearchTree() {
    return _isBST(this, min: null, max: null);
  }

  bool _isBST(BinaryNode<E>? tree, {E? min, E? max}) {
    if (tree == null) return true;
    if (min != null && tree.value.compareTo(min) < 0) {
      return false;
    } else if (max != null && tree.value.compareTo(max) >= 0) {
      return false;
    }
    return _isBST(tree.leftChild, min: min, max: tree.value) &&
        _isBST(tree.rightChild, min: tree.value, max: max);
  }
}
