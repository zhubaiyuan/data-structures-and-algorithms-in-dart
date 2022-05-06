import 'package:bfs/graph.dart';
import 'package:bfs/queue.dart';

/// In this chapter, you create an iterative implementation of
/// breadth-first search. Now write a recursive solution.
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
  graph.addEdge(c, f, weight: 1);
  graph.addEdge(c, g, weight: 1);
  graph.addEdge(e, h, weight: 1);
  graph.addEdge(e, f, weight: 1);
  graph.addEdge(f, g, weight: 1);
  final vertices = graph.bfs(a);
  vertices.forEach(print);
}

extension RecursiveBfs<E> on Graph<E> {
  List<Vertex<E>> bfs(Vertex<E> source) {
    final queue = QueueStack<Vertex<E>>();
    final Set<Vertex<E>> enqueued = {};
    List<Vertex<E>> visited = [];
    queue.enqueue(source);
    enqueued.add(source);
    _bfs(queue, enqueued, visited);
    return visited;
  }

  void _bfs(
    QueueStack<Vertex<E>> queue,
    Set<Vertex<E>> enqueued,
    List<Vertex<E>> visited,
  ) {
    final vertex = queue.dequeue();
    if (vertex == null) return;
    visited.add(vertex);
    final neighborEdges = edges(vertex);
    for (final edge in neighborEdges) {
      if (!enqueued.contains(edge.destination)) {
        queue.enqueue(edge.destination);
        enqueued.add(edge.destination);
      }
    }
    _bfs(queue, enqueued, visited);
  }
}
