import 'package:trie/trie.dart';

/// The trie data structure can be used beyond strings. Make a new class
/// named `Trie` that handles any iterable collection. Implement the `insert`,
/// `contains` and `remove` methods.
void main() {
  // See lib/trie.dart for the implementation details.
  final trie = Trie<int, List<int>>();
  trie.insert('cut'.codeUnits);
  trie.insert('cute'.codeUnits);
  if (trie.contains('cute'.codeUnits)) {
    print('cute is in the trie');
  }
  trie.remove('cut'.codeUnits);
  if (!trie.contains('cut'.codeUnits)) {
    print('cut has been removed');
  }
}
