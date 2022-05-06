import 'package:dijkstras/dijkstras.dart';
import 'package:dijkstras/graph.dart';
import 'dijkstras_graph.dart';

/// Add an extension on `Dijkstra` that returns all the shortest paths in
/// list form from a given starting vertex. Here’s the method signature to
/// get you started:
///
/// ```
/// Map<Vertex<E>, List<Vertex<E>>> shortestPathsLists(Vertex<E> source)
/// ```
void main() {
  final graph = createGraph();
  final source = graph.vertices.first;
  final dijkstra = Dijkstra(graph);
  final paths = dijkstra.shortestPathsLists(source);
  paths.forEach((vertex, path) {
    print('$vertex: $path');
  });
}

extension ShortestPaths<E> on Dijkstra<E> {
  Map<Vertex<E>, List<Vertex<E>>> shortestPathsLists(
    Vertex<E> source,
  ) {
    final allPathsLists = <Vertex<E>, List<Vertex<E>>>{};
    final allPaths = shortestPaths(source);
    for (final vertex in graph.vertices) {
      final path = shortestPath(
        source,
        vertex,
        paths: allPaths,
      );
      allPathsLists[vertex] = path;
    }
    return allPathsLists;
  }
}
