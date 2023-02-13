class Solution {
    public int solution(int a, int b, int n) {
        int answer = 0;
        
        while(true) {
            if(n < a) { // limit a
                break;
            } else {
                // a 가져다 주면 b 줌
                answer += (n / a) * b;
                int remainder = n % a;
                n = (n / a) * b + remainder;
            }
        }
        
        return answer;
    }
}
