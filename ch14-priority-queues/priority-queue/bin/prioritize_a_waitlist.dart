import 'package:priority_queue/priority_queue.dart';

/// Your favorite concert was sold out. Fortunately, there's a waitlist for
/// people who still want to go! However, ticket sales will first prioritize
/// someone with a military background, followed by seniority.
///
/// Use a priority queue to prioritize the order of people on the waitlist.
/// Start by making a `Person` class that you can instantiate like so:
///
/// ```
/// final person = Person(name: 'Josh', age: 21, isMilitary: true);
/// ```
void main() {
  final p1 = Person(name: 'Josh', age: 21, isMilitary: true);
  final p2 = Person(name: 'Jake', age: 22, isMilitary: true);
  final p3 = Person(name: 'Clay', age: 28, isMilitary: false);
  final p4 = Person(name: 'Cindy', age: 28, isMilitary: false);
  final p5 = Person(name: 'Sabrina', age: 30, isMilitary: false);

  final waitlist = [p1, p2, p3, p4, p5];

  var priorityQueue = PriorityQueue(elements: waitlist);
  while (!priorityQueue.isEmpty) {
    print(priorityQueue.dequeue());
  }
}

class Person extends Comparable<Person> {
  Person({
    required this.name,
    required this.age,
    required this.isMilitary,
  });

  final String name;
  final int age;
  final bool isMilitary;

  @override
  int compareTo(other) {
    if (isMilitary == other.isMilitary) {
      return age.compareTo(other.age);
    }
    return isMilitary ? 1 : -1;
  }

  @override
  String toString() {
    final military = (isMilitary) ? ', (military)' : '';
    return '$name, age $age$military';
  }
}
