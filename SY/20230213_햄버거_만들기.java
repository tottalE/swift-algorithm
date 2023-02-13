import java.util.*;

class Solution {
    public int solution(int[] ingredient) {
        int answer = 0;

        Stack<Integer> iStack = new Stack<Integer>();
        for(int i : ingredient) {
            iStack.push(i);
            
            if(iStack.size() >= 4) {
                if(iStack.get(iStack.size() -4) == 1 &&
                  iStack.get(iStack.size() -3) == 2 &&
                  iStack.get(iStack.size() -2) == 3 &&
                  iStack.get(iStack.size() -1) == 1) {
                    answer++;
                    
                    iStack.pop();
                    iStack.pop();
                    iStack.pop();
                    iStack.pop();
                }
            }
        }
        
        return answer;
    }
}
