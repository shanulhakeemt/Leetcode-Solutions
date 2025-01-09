/* 
 ^3184. 
 !count pairs that form a complete day1
 *Given an integer array hours representing times in hours, return an integer denoting the number of pairs i, j where i < j and hours[i] + hours[j] forms a complete day.
*A complete day is defined as a time duration that is an exact multiple of 24 hours
 */

int countCompleteDayPairs(List<int> hours) {
  int c = 0;
  for (int i = 0; i < hours.length; i++) {
    for (int j = i + 1; j < hours.length; j++) {
      if ((hours[i] + hours[j]) % 24 == 0) {
        c++;
      }
    }
  }
  return c;
}
