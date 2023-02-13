import java.util.*;

class Solution {
    public int solution(int number, int limit, int power) {
        int answer = 0;
        int[] soldier = new int[number];
        for (int i=0; i<soldier.length; i++ ) {
            soldier[i] = i+1;
        }
        
        int[] m = new int[number];
        for (int i =0; i<soldier.length; i++) {
            for (int j =1; j*j<=soldier[i]; j++) {
                if (j*j == soldier[i]) m[i]++;
                else if(soldier[i] % j == 0) {
                    m[i] += 2;
                }
            }
            //System.out.println(m[i]);
        }
        
        for(int i : m) {
            if (i > limit) {
                answer+=power;
            } else {
                answer+=i;    
            }
            //System.out.println(answer);
        }
        return answer;
    }
}
