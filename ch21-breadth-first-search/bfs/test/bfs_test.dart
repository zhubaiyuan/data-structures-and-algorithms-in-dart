import 'package:bfs/bfs.dart';
import 'package:bfs/graph.dart';
import 'package:test/test.dart';

void main() {
  test('breadth-first search', () {
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
    final vertices = graph.breadthFirstSearch(a);
    expect(vertices[0].data, 'A');
    expect(vertices[1].data, 'B');
    expect(vertices[2].data, 'C');
    expect(vertices[3].data, 'D');
    expect(vertices[4].data, 'E');
    expect(vertices[5].data, 'F');
    expect(vertices[6].data, 'G');
    expect(vertices[7].data, 'H');
  });
}
