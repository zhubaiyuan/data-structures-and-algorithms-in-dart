import 'package:binary_tree/binary_tree.dart';

import 'height_of_a_tree.dart';

/// A common task in software development is serializing an object into another
/// data type. This process is known as serialization, and allows custom types
/// to be used in systems that only support a closed set of data types. An
/// example of serialization is JSON.
///
/// Your task is to devise a way to serialize a binary tree into a list, and a
/// way to deserialize the list back into the same binary tree.
///
/// To clarify this problem, consider the following binary tree:
///
/// ```
///  ┌──25
///  │ └──17
/// 15
///  │ ┌──12
///  └──10
///    └──5
/// ```
///
/// A particular algorithm may output the serialization as follows:
///
/// ```
/// [15, 10, 5, null, null, 12, null, null, 25, 17, null, null, null]
/// ```
///
/// The deserialization process should transform the list back into the same
/// binary tree. Note that there are many ways to perform serialization. You
/// may choose any way you wish.
void main() {
  final tree = createBinaryTree();
  final list = serialize(tree);
  final newTree = deserializeHelper(list);
  print(newTree);
}

extension Serializable<T> on BinaryNode<T> {
  void traversePreOrderWithNull(void Function(T? value) action) {
    action(value);
    if (leftChild == null) {
      action(null);
    } else {
      leftChild!.traversePreOrderWithNull(action);
    }
    if (rightChild == null) {
      action(null);
    } else {
      rightChild!.traversePreOrderWithNull(action);
    }
  }
}

List<T?> serialize<T>(BinaryNode<T> node) {
  final list = <T?>[];
  node.traversePreOrderWithNull((value) => list.add(value));
  return list;
}

BinaryNode<T>? deserialize<T>(List<T?> list) {
  if (list.isEmpty) return null;
  final value = list.removeLast();
  if (value == null) return null;
  final node = BinaryNode<T>(value);
  node.leftChild = deserialize(list);
  node.rightChild = deserialize(list);
  return node;
}

BinaryNode<T>? deserializeHelper<T>(List<T?> list) {
  return deserialize(list.reversed.toList());
}
