import java.util.*;

class Solution {
    public int[] solution(int k, int[] score) {
        int[] answer = new int[score.length];
        int[] HOF = new int[k];
        
        for (int j =0; j<HOF.length; j++) {
            HOF[j] = score[j];
            System.out.println("HOF: "+HOF[j]);
        }
        int min = score[0];
        
        for (int i = 0; )
        
        for (int i = 0 ; i<HOF.length; i++) {
            for (int j= 1; j<HOF.length; j++) {
                answer[i] = Math.min(HOF[i], HOF[j]);
            }
        }
        
        
        return answer;
    }
}
