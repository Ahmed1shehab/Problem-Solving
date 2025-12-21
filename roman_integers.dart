
void main() {
  var solution = Solution();
  solution.romanToInt("IVV");
}

class Solution {
  int romanToInt(String s) {
    var romanIntegers = {
      //Map
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };
    int sum = 0;

    for (int i = 0; i < s.length; i++) {
      if (romanIntegers.containsKey(s[i])) {
        int? current = romanIntegers[s[i]];

        if (i + 1 < s.length) {
          if (romanIntegers[s[i]]! <
              romanIntegers[s[i + 1]]!) {
            sum -= current!;
          } else
            sum += current!;
        } else
          sum += current!;
      } else
        print('nothing');
    }
    print("$sum");
    return sum;
  }
}
