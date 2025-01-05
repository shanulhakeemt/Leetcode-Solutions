import 'dart:collection';

int countWords(List<String> words1, List<String> words2) {
  HashMap<String, int> m1 = HashMap();
  HashMap<String, int> m2 = HashMap();
  int c = 0;

  for (int i = 0; i < words1.length; i++) {
    m1[words1[i]] = (m1[words1[i]] ?? 0) + 1;
  }
  for (int i = 0; i < words2.length; i++) {
    m2[words2[i]] = (m2[words2[i]] ?? 0) + 1;
  }
  for (String i in m1.keys) {
    if (m1[i] == 1 && m2[i] == 1) {
      c++;
    }
  }
  return c;
}
