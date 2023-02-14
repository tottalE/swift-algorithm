class Solution {
    public String solution(int[] food) {
        String answer = "";
        int[] count;
        for (int i =1; i<food.length; i++) {
            if (food[i] > 1) {
                int n = food[i] / 2;
                for (int j=1; j<=n; j++) {
                    answer+= Integer.toString(i);    
                }
            }
        }
        answer += "0";
        for (int i =food.length-1; i>0; i--) {
            if (food[i] > 1) {
                int n = food[i] / 2;
                for (int j=n; j>0; j--) {
                    answer+= Integer.toString(i);    
                }
            }
        }
        
        return answer;
    }
}
