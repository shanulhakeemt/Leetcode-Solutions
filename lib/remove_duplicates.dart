/* 
 ^26. 
 !Remove Duplicates from Sorted Array
 */

int removeDuplicates(List<int> nums) {
  Map<int, int> m = {};
  int c = 0, i = 0;
  for (int i = 0; i < nums.length; i++) {
    if (m[nums[i]] != null) {
      m[nums[i]] = m[nums[i]]! + 1;
    } else {
      c++;
      m[nums[i]] = 1;
    }
  }
  for (int j in m.keys) {
    nums[i] = j;
    i++;
  }
  return c;
}

/* 
~8 ms
^Time Complexity: 𝑂(𝑛)
&Space Complexity: 𝑂(𝑛)
*/ 
