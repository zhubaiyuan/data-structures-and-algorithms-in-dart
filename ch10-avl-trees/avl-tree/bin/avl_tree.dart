import 'package:avl_tree/avl_tree.dart';

void main() {
  inserting();
  removing();
}

void inserting() {
  final tree = AvlTree<int>();
  for (var i = 0; i < 15; i++) {
    tree.insert(i);
  }
  print(tree);
}

void removing() {
  final tree = AvlTree<int>();
  tree.insert(15);
  tree.insert(10);
  tree.insert(16);
  tree.insert(18);
  print(tree);
  tree.remove(10);
  print(tree);
}
