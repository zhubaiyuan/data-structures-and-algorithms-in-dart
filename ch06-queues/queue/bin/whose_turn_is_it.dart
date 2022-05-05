import 'package:queue/queue.dart';

/// Imagine that you are playing a game of Monopoly with your friends. The
/// problem is that everyone always forgets whose turn it is! Create a
/// Monopoly organizer that always tells you whose turn it is. Below is an
/// extension method that you can implement:
///
/// ```dart
/// extension BoardGameManager<E> on QueueRingBuffer {
///   E? nextPlayer() {
///     // TODO
///   }
/// }
/// ```
void main() {
  final monopolyTurn = QueueRingBuffer<String>(4);
  monopolyTurn.enqueue('Ray');
  monopolyTurn.enqueue('Vicki');
  monopolyTurn.enqueue('Luke');
  monopolyTurn.enqueue('Pablo');
  String? player;
  for (var i = 1; i <= 20; i++) {
    player = monopolyTurn.nextPlayer();
    print(player);
  }
  print('$player wins!');
}

extension BoardGameManager<E> on QueueRingBuffer<E> {
  E? nextPlayer() {
    final person = dequeue();
    if (person != null) {
      enqueue(person);
    }
    return person;
  }
}
