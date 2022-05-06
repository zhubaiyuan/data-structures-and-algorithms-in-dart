/// Write a function that returns the total number of unique characters used
/// in a list of words.
///
/// You can use the following list:
///
/// ```
/// final words = ['done', 'ad', 'eel', 'zoo', 'adept', 'do'];
/// ```
///
/// If you had a bucket for each unique character, how many buckets would
/// you need?
void main() {
  final words = ['done', 'ad', 'eel', 'zoo', 'adept', 'do'];
  print(uniqueCharacters(words));
}

int uniqueCharacters(List<String> words) {
  final uniqueChars = <int>{};
  for (final word in words) {
    for (final codeUnit in word.codeUnits) {
      uniqueChars.add(codeUnit);
    }
  }
  return uniqueChars.length;
}
