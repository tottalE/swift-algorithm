class Solution {
    public int solution(int[] number) {
        int answer = 0;
        int start = 0;
        while (start <= number.length -3) {
            for (int i = start + 1; i<number.length; i++ ) {
                for (int j = i + 1; j<number.length; j++) {
                    if (number[start] + number[i] + number[j] == 0) answer++; 
                }
            }
            start++;
        }
            
        return answer;
    }
}
