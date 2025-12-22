class Solution {
  bool isValid(String s) {
    List storage = [];
    for (int i = 0; i < s.length; i++) {
      String ch = s[i];
      if (ch == "(" || ch == '{' || ch == '[') {
        storage.add(ch);
      }
      if (ch == ")" || ch == '}' || ch == ']') {
        if (storage.isEmpty) return false;
        String last = storage.removeLast();
        if (last == '(' && ch == ')' ||
            last == '{' && ch == '}' ||
            last == '[' && ch == ']') {
          return true;
        }
      }
    }
    return storage.isEmpty;
  }
}

void main() {
  String s = "({})";
  var solution = Solution();
  print(solution.isValid(s));
}
