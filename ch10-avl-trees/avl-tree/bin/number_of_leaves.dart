import 'dart:math' as math;

/// How many **leaf** nodes are there in a perfectly balanced tree of
/// height 3? What about a perfectly balanced tree of height `h`?
void main() {
  // See the Challenge Solutions chapter for an explanation.
  print(leafNodes(3));
  print(leafNodes(4));
  print(leafNodes(5));
}

int leafNodes(int height) {
  return math.pow(2, height).toInt();
}
