/* 
 ^1941. 
 !Check if all characters have equal number of occurrences
 */


import 'dart:collection';

bool areOccurrencesEqual(String s) {
  HashMap<String, int> m = HashMap();
  for (int i = 0; i < s.length; i++) {
        m[s[i]] = (m[s[i]]??0)+1;

  }
  final c = m[s[0]];

  for (String i in m.keys) {
    if (c != m[i]) {
      return false;
    }
  }

  return true;
}
/* 
~8 ms
^Time Complexity: 𝑂(𝑛)
&Space Complexity: 𝑂(𝑛)
*/ 



/*
bool areOccurrencesEqual(String s) {
    List<int> frequency = List.filled(26, 0); // Fixed-size array for character counts

    // Count occurrences of each character
    for (int i = 0; i < s.length; i++) {
      frequency[s.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }

    // Find the first non-zero frequency
    int targetFrequency = frequency.firstWhere((f) => f > 0, orElse: () => 0);

    // Check if all non-zero frequencies match the target frequency
    for (int count in frequency) {
      if (count > 0 && count != targetFrequency) {
        return false;
      }
    }

    return true;
  }

^Time Complexity: O(n)
&Space Complexity: O(1)

*/