  
  /* 
 ^2068. 
 !Check wheather two strings are almost equivalent
 *Two strings word1 and word2 are considered almost equivalent if the differences between the frequencies of each letter from 'a' to 'z' between word1 and word2 is at most 3.
*Given two strings word1 and word2, each of length n, return true if word1 and word2 are almost equivalent, or false otherwise.
 */

  
  import 'dart:collection';

bool checkAlmostEquivalent(String word1, String word2) {
    
    HashMap<String,int> m1=HashMap();
    HashMap<String,int> m2=HashMap();

    for (int i = 0; i < word1.length; i++) {
    m1[word1[i]] = (m1[word1[i]] ?? 0) + 1;
  }
     for (int i = 0; i < word2.length; i++) {
    m2[word2[i]] = (m2[word2[i]] ?? 0) + 1;
  }


     for(String i in m1.keys){
         if((m1[i]!-(m2[i]??0)).abs()>3){
            return false;
         }

    }
    for(String i in m2.keys){
      if((m2[i]!-(m1[i]??0)).abs()>3){
            return false;
         }
  }


return true;

  }
  /* 
^Time Complexity: 𝑂(𝑛)
&Space Complexity: 𝑂(1)
*/ 

/*

  bool checkAlmostEquivalent(String word1, String word2) {
    List<int> freq1 = List.filled(26, 0); // Frequency array for word1
    List<int> freq2 = List.filled(26, 0); // Frequency array for word2

    // Count frequencies for word1 and word2
    for (int i = 0; i < word1.length; i++) {
      freq1[word1.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
      freq2[word2.codeUnitAt(i) - 'a'.codeUnitAt(0)]++;
    }

    // Check if the difference between frequencies is at most 3 for all letters
    for (int i = 0; i < 26; i++) {
      if ((freq1[i] - freq2[i]).abs() > 3) {
        return false;
      }
    }

    return true;
  }


^Time Complexity: 𝑂(𝑛)
&Space Complexity: 𝑂(1)

*/