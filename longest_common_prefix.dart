void main() {
  var solution = Solution();
  solution.longestCommonPrefix(['Ahmed', 'Ahd', "Ahmot", "Ah"]);

  String text ='ahmed';
  text.substring(0,2);
  print( text.substring(0,3));
}

class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) return ("");

    String prefix = strs[0];
    for (int i = 0; i < strs.length; i++) {
      while (!strs[i].startsWith(prefix)) {
        prefix = prefix.substring(0, prefix.length - 1);
      }
    }
    print(prefix);
    return prefix;
  }
}
