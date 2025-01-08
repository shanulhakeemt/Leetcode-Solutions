int missingNumber(List<int> nums) {
  int max = nums[0];
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] > max) {
      max = nums[i];
    }
  }
  List<int> arr = List.generate(max + 1, (_) => -1);

  for (int i = 0; i < nums.length; i++) {
    arr[nums[i]] = nums[i];
  }
  for (int i = 0; i < arr.length; i++) {
    if (arr[i] == -1) {
      return i;
    }
  }

  return nums.length;
}
