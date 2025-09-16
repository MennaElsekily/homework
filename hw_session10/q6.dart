/*Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
An input string is valid if:
1. Open brackets must be closed by the same type of brackets.
2. Open brackets must be closed in the correct order.
3. Every close bracket has a corresponding open bracket of the same type.
Examples:
- '()' → Valid
- '()[]{}' → Valid
- '(]' → Invalid
- '([)]' → Invalid
- '{[]}' → Valid*/
bool isValidBrackets(String s) {
  List<String> stack = [];
  for (int i = 0; i < s.length; i++) {
    String ch = s[i];
    if (ch == '(' || ch == '[' || ch == '{') {
      stack.add(ch);
    } else if (ch == ')') {
      if (stack.isEmpty || stack.last != '(') return false;
      stack.removeLast();
    } else if (ch == ']') {
      if (stack.isEmpty || stack.last != '[') return false;
      stack.removeLast();
    } else if (ch == '}') {
      if (stack.isEmpty || stack.last != '{') return false;
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

void main() {
  print(isValidBrackets("()"));
  print(isValidBrackets("()[]{}"));
  print(isValidBrackets("(]"));
  print(isValidBrackets("([)]"));
  print(isValidBrackets("{[]}"));
}
