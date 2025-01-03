/* 
 ^2053. 
 !Kth distinct string in array
 */

String kthDistinct(List<String> arr, int k) {
  Map<String, int> m = {};

  for (int i = 0; i < arr.length; i++) {
    m[arr[i]] = (m[arr[i]] ?? 0) + 1;
  }
  int c = 0;
  for (String i in m.keys) {
    if (m[i] == 1) {
      c++;
      if (c == k) {
        return i;
      }
    }
  }

  return '';
}

/* 
^Time Complexity: 𝑂(𝑛)
&Space Complexity: 𝑂(𝑛)
*/ 