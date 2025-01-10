/* 
 ^169. 
 !Majority element
 */

import 'dart:collection';

int majorityElement(List<int> nums) {
  HashMap<int, int> h = HashMap();
  for (int i = 0; i < nums.length; i++) {
    h[nums[i]] = (h[nums[i]] ?? 0) + 1;
  }

  int max = 0;
  int value = -1;
  for (int i in h.keys) {
    if (h[i]! > max) {
      max = h[i]!;
      value = i;
    }
  }

  return value;
}

int majorityElementBoyerMoore(List<int> nums) {
  int candidate = nums[0];
  int count = 0;

  for (int num in nums) {
    if (count == 0) {
      candidate = num;
    }
    count += (num == candidate) ? 1 : -1;
  }

  return candidate;
}
