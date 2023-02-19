import java.util.*;

class Solution {
    public int[] solution(int[] lottos, int[] win_nums) {
        int cnt = 0;
        int zero = 0;
        int[] win_levels = {0, 6, 5, 4, 3, 2, 1};
        
        for (int i : lottos) {
            if (Arrays.stream(win_nums).anyMatch(x -> x == i)) cnt++;
            else if (i ==0) zero++;
        }
        //System.out.println(cnt);
        //System.out.println(zero);
        int[] answer = {1,1};
        if (cnt != 6 && cnt !=0) {
            answer[0] = win_levels[cnt+zero];
            answer[1] = win_levels[cnt];
        } else if (zero == 6) {
            answer[0] = 1;
            answer[1] = 6;
        } else if (zero ==0 && cnt == 0) {
            answer[0] = 6;
            answer[1] = 6;
        }
        return answer;
    }
}
