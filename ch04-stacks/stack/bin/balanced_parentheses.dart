import 'package:stack/stack.dart';

void main() {
  print(checkParentheses('h((e))llo(world)()'));
  print(checkParentheses('(hello world'));
  print(checkParentheses('hello)(world'));
}

bool checkParentheses(String text) {
  var stack = Stack<int>();
  final open = '('.codeUnitAt(0);
  final close = ')'.codeUnitAt(0);
  for (int codeUnit in text.codeUnits) {
    if (codeUnit == open) {
      stack.push(codeUnit);
    } else if (codeUnit == close) {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}
