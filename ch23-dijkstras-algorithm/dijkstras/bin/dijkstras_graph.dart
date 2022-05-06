import 'package:dijkstras/dijkstras.dart';
import 'package:dijkstras/graph.dart';

/// Given the following graph, step through Dijkstra’s algorithm yourself
/// to produce the shortest path to every other vertex starting from vertex A.
///
/// See the book for the image.
void main() {
  final graph = createGraph();
  final source = graph.vertices.first;
  final dijkstra = Dijkstra(graph);
  final paths = dijkstra.shortestPaths(source);
  print(paths);
}

Graph<String> createGraph() {
  final graph = AdjacencyList<String>();
  final a = graph.createVertex('A');
  final b = graph.createVertex('B');
  final c = graph.createVertex('C');
  final d = graph.createVertex('D');
  final e = graph.createVertex('E');
  graph.addEdge(a, b, weight: 1, edgeType: EdgeType.directed);
  graph.addEdge(a, c, weight: 12, edgeType: EdgeType.directed);
  graph.addEdge(a, e, weight: 21, edgeType: EdgeType.directed);
  graph.addEdge(b, c, weight: 8, edgeType: EdgeType.directed);
  graph.addEdge(b, d, weight: 9, edgeType: EdgeType.directed);
  graph.addEdge(c, e, weight: 2, edgeType: EdgeType.directed);
  graph.addEdge(d, e, weight: 2, edgeType: EdgeType.directed);
  return graph;
}
