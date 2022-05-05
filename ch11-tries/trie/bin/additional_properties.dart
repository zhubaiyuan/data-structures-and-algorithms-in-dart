import 'package:trie/string_trie.dart';

/// The original implementation of `StringTrie` is missing some notable
/// operations. Your task for this challenge is to augment the current
/// implementation of the trie by adding the following:
///
/// 1. An `allStrings` property that returns all the collections in the trie.
///
/// 2. A `length` property that tells you how many strings are currently in
///    the trie.
///
/// 3. An `isEmpty` property that returns `true` if the trie is empty, `false`
///    otherwise.
void main() {
  final trie = StringTrie();
  print(trie.isEmpty);
  trie.insert('cut');
  trie.insert('cute');
  print(trie.allStrings);
  print(trie.length);
  print(trie.isEmpty);
}
