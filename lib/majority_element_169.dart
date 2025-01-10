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
