import java.util.*;

class Solution {
    public int[] solution(int k, int[] score) {
        int[] answer = new int[score.length];
        int len = score.length;
        List<Integer> scoreList = new ArrayList<Integer>();
        
        for(int i=0; i<len; i++) {
            scoreList.add(score[i]); //i번째 score add
            scoreList.sort(Collections.reverseOrder()); //높은 수부터 정렬
            if(i< k-1) {
                answer[i] = scoreList.get(scoreList.size() - 1); //낮은 수 담기
            } else if(i >= k-1) {
                answer[i] = scoreList.get(k - 1);
            }
        }
        
        return answer;
    }
}
