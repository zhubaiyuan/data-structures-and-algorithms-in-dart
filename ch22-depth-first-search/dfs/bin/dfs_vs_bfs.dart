import 'package:dfs/bfs.dart';
import 'package:dfs/dfs.dart';
import 'package:dfs/graph.dart';

/// For each of the following two examples, which traversal, depth-first or
/// breadth-first, is better for discovering if a path exists between the two
/// nodes? Explain why.
///
/// - Path from **A** to **F**.
/// - Path from **A** to **G**.
///
/// A-B-C-D-F-H
/// G
void main() {
  final graph = AdjacencyList<String>();
  final a = graph.createVertex('A');
  final b = graph.createVertex('B');
  final c = graph.createVertex('C');
  final d = graph.createVertex('D');
  final f = graph.createVertex('F');
  final g = graph.createVertex('G');
  final h = graph.createVertex('H');
  graph.addEdge(a, b, weight: 1);
  graph.addEdge(a, g, weight: 1);
  graph.addEdge(b, c, weight: 1);
  graph.addEdge(c, d, weight: 1);
  graph.addEdge(d, f, weight: 1);
  graph.addEdge(f, h, weight: 1);
  final dfsVertices = graph.depthFirstSearch(a);
  final bfsVertices = graph.breadthFirstSearch(a);
  print('DFS order: $dfsVertices');
  print('BFS order: $bfsVertices');
}
