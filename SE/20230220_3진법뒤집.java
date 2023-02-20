import java.util.*;

class Solution {
    public int solution(int n) {
        StringBuffer sb = new StringBuffer(Integer.toString(n, 3));
        String reversedStr = sb.reverse().toString();

        return Integer.parseInt(reversedStr, 3);
    }
}
