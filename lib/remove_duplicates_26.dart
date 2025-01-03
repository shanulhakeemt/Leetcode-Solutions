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
^Time Complexity: 𝑂(𝑛)
&Space Complexity: 𝑂(𝑛)
*/ 




/*
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0; // Edge case: empty array

    int k = 1; // Index to track the position of the unique elements

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] != nums[i - 1]) {
        nums[k] = nums[i]; // Move the unique element forward
        k++;
      }
    }

    return k; // Return the count of unique elements
  }

^Time Complexity: O(n)
&Space Complexity: O(1)

*/
