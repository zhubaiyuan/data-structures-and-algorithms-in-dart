import 'package:avl_tree/avl_tree.dart';

/// Since there are many variants of binary trees, it makes sense to group
/// shared functionality in an interface. The traversal methods are a good
/// candidate for this.
///
/// Create a `TraversableBinaryNode` abstract class that provides a default
/// implementation of the traversal methods so that conforming types get
/// these methods for free. Have `AvlNode` conform to this.
void main() {
  // See avl_node.dart for the updates.
  final tree = AvlTree<int>();
  for (var i = 0; i < 15; i++) {
    tree.insert(i);
  }
  tree.root?.traverseInOrder(print);
}
