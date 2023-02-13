import java.util.*;

class Solution {
    public int solution(int k, int m, int[] score) {
        Arrays.sort(score);
        int answer = 0;
        int index = score.length -1;
        while (index >= 0) {
            //System.out.println(index);
            if (index -m +1 >= 0) {
                answer += score[index -m + 1] * m;    
            }
            index = index - m;
        }      
        return answer;
    }
}
