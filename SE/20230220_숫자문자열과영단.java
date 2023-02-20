import java.util.*;

class Solution {
    public int solution(String s) {
        String[] nArr = {"zero", "one", "two", "three", "four", "five", 
                        "six", "seven", "eight", "nine"};

        for (int i =0; i<nArr.length; i++) {
            s= s.replaceAll(nArr[i], Integer.toString(i));
        }
        
        //System.out.println(s);
        
        return Integer.parseInt(s);
    }

}
