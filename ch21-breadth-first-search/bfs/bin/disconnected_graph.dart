import 'package:bfs/bfs.dart';
import 'package:bfs/graph.dart';

/// Add a method to `Graph` to detect if a graph is disconnected. An example
/// of a disconnected graph is shown below:
///
/// - See the chapter for the image.
void main() {
  final graph = AdjacencyList<String>();
  final a = graph.createVertex('A');
  final b = graph.createVertex('B');
  final c = graph.createVertex('C');
  final d = graph.createVertex('D');
  final e = graph.createVertex('E');
  final f = graph.createVertex('F');
  final g = graph.createVertex('G');
  final h = graph.createVertex('H');
  graph.addEdge(a, b, weight: 1);
  graph.addEdge(a, c, weight: 1);
  graph.addEdge(a, d, weight: 1);
  graph.addEdge(e, h, weight: 1);
  graph.addEdge(e, f, weight: 1);
  graph.addEdge(f, g, weight: 1);
  print(graph.isConnected());
  // Add the following connection to connect the graphs
  graph.addEdge(a, e, weight: 1);
  print(graph.isConnected());
}

// lib/graph.dart was modified to include an `allVertices` method.
extension Connected<E> on Graph<E> {
  bool isConnected() {
    if (vertices.isEmpty) return true;
    final visited = breadthFirstSearch(vertices.first);
    for (final vertex in vertices) {
      if (!visited.contains(vertex)) {
        return false;
      }
    }
    return true;
  }
}
