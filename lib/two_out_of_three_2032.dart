  
  /* 
 ^2032. 
 !Two out of three
 *Given three integer arrays nums1, nums2, and nums3, return a distinct array containing all the values that are present in at least two out of the three arrays. You may return the values in any order.
 */

  
  import 'dart:collection';

List<int> twoOutOfThree(List<int> nums1, List<int> nums2, List<int> nums3) {
    HashMap<int,int> m=HashMap();
    Set<int> set1 = nums1.toSet();
    Set<int> set2 = nums2.toSet();
    Set<int> set3 = nums3.toSet();

    List<int> resArray=[];
    for(int i in set1){
        m[i]=1;
    }
      for(int i in set2){
m[i]=(m[i]??0)+1;
    }
      for(int i in set3){
m[i]=(m[i]??0)+1;
    }

print(m);

for(int i in m.keys){
    resArray=resArray+(( (!resArray.contains(i) ) && m[i]! > 1 )?[i]:[]);
}
return resArray;

  }

  /* 
^Time Complexity:  O(n1​+n2​+n3​+ n⋅(n1+n2+n3)) = 𝑂(𝑛)
&Space Complexity: 𝑂(n1​+n2​+n3) = 𝑂(𝑛)
*/ 