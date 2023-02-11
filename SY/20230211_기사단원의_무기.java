import java.util.*;

class Solution {
    public int solution(int number, int limit, int power) {
        int answer = 0;
        
        //기사 수(number)만큼 반복
        for (int i=1; i<=number; i++) {
            int count = 0;
            //예시 number 5의 약수는 1, 5이고
            //1 = √1*1, 5 = √5*5이므로
            for (int j=1; j*j <= i; j++) {
                if (j*j == i) count++;
                else if (i % j == 0) count += 2;
                //5의 약수는 10의 약수이므로
            }
            
            //check
            count = count > limit ? power : count;
            answer += count;
        }
        
        return answer;
    }
}
