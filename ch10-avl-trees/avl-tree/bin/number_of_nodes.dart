import 'dart:math' as math;

/// How many **nodes** are there in a perfectly balanced tree of height 3?
/// What about a perfectly balanced tree of height `h`?
void main() {
  // See the Challenge Solutions chapter for an explanation.
  print(nodesOkSolution(3));
  print(nodesFasterSolution(3));
}

int nodesOkSolution(int height) {
  int nodes = 0;
  for (int h = 0; h <= height; h++) {
    nodes += math.pow(2, h).toInt();
  }
  return nodes;
}

int nodesFasterSolution(int height) {
  return math.pow(2, height + 1).toInt() - 1;
}
