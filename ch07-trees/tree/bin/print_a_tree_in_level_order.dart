import 'package:tree/queue.dart';
import 'package:tree/tree.dart';

/// Print all the values in a tree in an order based on their level. Nodes
/// in the same level should be printed on the same line. For example,
/// consider the following tree:
///
///         15
///   ┌─────┼────┐
///   1     17   20
/// ┌─┼─┐   │   ┌┴┐
/// 1 5 0   2   5 7
///
/// Your algorithm should print the following:
///
/// ```
/// 15
/// 1 17 20
/// 1 5 0 2 5 7
/// ```
void main() {
  final tree = buildTree();
  printEachLevel(tree);
}

TreeNode<int> buildTree() {
  return TreeNode(15)
    ..children.addAll([
      TreeNode(1)
        ..children.addAll([
          TreeNode(1),
          TreeNode(5),
          TreeNode(0),
        ]),
      TreeNode(17)
        ..children.addAll([
          TreeNode(2),
        ]),
      TreeNode(20)
        ..children.addAll([
          TreeNode(5),
          TreeNode(7),
        ]),
    ]);
}

void printEachLevel<T>(TreeNode<T> tree) {
  final result = StringBuffer();
  var queue = QueueStack<TreeNode<T>>();
  var nodesLeftInCurrentLevel = 0;
  queue.enqueue(tree);
  while (!queue.isEmpty) {
    nodesLeftInCurrentLevel = queue.length;
    while (nodesLeftInCurrentLevel > 0) {
      final node = queue.dequeue();
      if (node == null) break;
      result.write('${node.value} ');
      for (var element in node.children) {
        queue.enqueue(element);
      }
      nodesLeftInCurrentLevel -= 1;
    }
    result.write('\n');
  }
  print(result);
}
