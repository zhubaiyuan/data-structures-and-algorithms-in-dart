import 'dart:math';

import 'package:binary_tree/binary_tree.dart';

/// Given a binary tree, find the height of the tree. The height of the
/// binary tree is determined by the distance between the root and the
/// furthest leaf. The height of a binary tree with a single node is zero,
/// since the single node is both the root and the furthest leaf.
void main() {
  final tree = createBinaryTree();
  final treeHeight = height(tree);
  print(tree);
  print('Tree height: $treeHeight');
}

// Demo tree
//
//  ┌──25
//  │ └──17
// 15
//  │ ┌──12
//  └──10
//    └──5
BinaryNode<int> createBinaryTree() {
  final n15 = BinaryNode(15);
  final n10 = BinaryNode(10);
  final n5 = BinaryNode(5);
  final n12 = BinaryNode(12);
  final n25 = BinaryNode(25);
  final n17 = BinaryNode(17);

  n15.leftChild = n10;
  n10.leftChild = n5;
  n10.rightChild = n12;
  n15.rightChild = n25;
  n25.leftChild = n17;

  return n15;
}

int height(BinaryNode? node) {
  if (node == null) return -1;
  return 1 + max(height(node.leftChild), height(node.rightChild));
}
