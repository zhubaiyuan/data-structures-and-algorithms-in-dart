import 'package:bfs/graph.dart';
import 'package:bfs/queue.dart';

/// For the following undirected graph, list the **maximum** number of
/// items ever in the queue. Assume that the starting vertex is **A**.
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
  final i = graph.createVertex('I');
  final j = graph.createVertex('J');
  graph.addEdge(a, b, weight: 1);
  graph.addEdge(a, c, weight: 1);
  graph.addEdge(a, d, weight: 1);
  graph.addEdge(c, i, weight: 1);
  graph.addEdge(d, i, weight: 1);
  graph.addEdge(e, f, weight: 1);
  graph.addEdge(e, h, weight: 1);
  graph.addEdge(f, g, weight: 1);
  graph.addEdge(f, i, weight: 1);
  graph.addEdge(g, i, weight: 1);
  graph.addEdge(i, j, weight: 1);
  graph.queuePrintingBfs(a);
  // The max number of items in the queue is 3.
}

// This BFS extension adds some print statements so that you can observe
// the number of items in the queue.
extension QueuePrintingBfs<E> on Graph<E> {
  List<Vertex<E>> queuePrintingBfs(Vertex<E> source) {
    final queue = QueueStack<Vertex<E>>();
    Set<Vertex<E>> enqueued = {};
    List<Vertex<E>> visited = [];

    queue.enqueue(source);
    enqueued.add(source);
    print('Queue: $queue');

    while (true) {
      final vertex = queue.dequeue();
      print('Queue: $queue');
      if (vertex == null) break;
      visited.add(vertex);
      final neighborEdges = edges(vertex);
      for (final edge in neighborEdges) {
        if (!enqueued.contains(edge.destination)) {
          queue.enqueue(edge.destination);
          enqueued.add(edge.destination);
          print('Queue: $queue');
        }
      }
    }
    return visited;
  }
}
