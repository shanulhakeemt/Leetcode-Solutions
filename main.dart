import 'package:leetcode_solutions/are_occurrences_equal_1941.dart';
import 'package:leetcode_solutions/k_th_distinct_2053.dart';
import 'package:leetcode_solutions/remove_duplicates_26.dart';
import 'package:leetcode_solutions/two_out_of_three_2032.dart';

void main(List<String> arguments) {
  final result_26 = removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]);
  final result_1941 = areOccurrencesEqual('abacbc');
  final result_2032 = twoOutOfThree([2,2,3],[1,2],[4,3]);
  final result_2053 = kthDistinct(["d","b","c","b","c","a"],2);
  print(result_2053);
}
