import 'package:dfs/graph.dart';

/// In this chapter, you learned an iterative implementation of depth-first
/// search. Now write a recursive implementation.
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
  graph.addEdge(b, e, weight: 1);
  graph.addEdge(c, g, weight: 1);
  graph.addEdge(e, f, weight: 1);
  graph.addEdge(e, h, weight: 1);
  graph.addEdge(f, g, weight: 1);
  graph.addEdge(f, c, weight: 1);
  final vertices = graph.dfs(a);
  vertices.forEach(print);
}

extension RecursiveDfs<E> on Graph<E> {
  List<Vertex<E>> dfs(Vertex<E> start) {
    List<Vertex<E>> visited = [];
    Set<Vertex<E>> pushed = {};
    _dfs(start, visited, pushed);
    return visited;
  }

  void _dfs(
    Vertex<E> source,
    List<Vertex<E>> visited,
    Set<Vertex<E>> pushed,
  ) {
    pushed.add(source);
    visited.add(source);
    final neighbors = edges(source);
    for (final edge in neighbors) {
      if (!pushed.contains(edge.destination)) {
        _dfs(edge.destination, visited, pushed);
      }
    }
  }
}
