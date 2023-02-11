
class Solution {
    public String solution(int[] food) {
        String answer = "";
        StringBuilder sb = new StringBuilder();
        
        for(int i=1; i<food.length; i++) {
            int share = food[i] / 2;

            for(int j=0; j<share; j++) {
                sb.append(i);
            }
        }
        
        answer = sb.toString() + "0" + sb.reverse().toString();
        return answer;
    }
}
