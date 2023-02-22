import java.util.*;

class Solution {
    public int[] solution(int[] numbers) {
        Set<Integer> sums = new HashSet<>();
        for (int i=0; i<numbers.length; i++) {
            for (int j = i+1; j <numbers.length; j++) {
                int sum = numbers[i]+ numbers[j];
                sums.add(sum);
            }
        }
        //System.out.println(sums);
        
        return sums.stream().mapToInt(Integer::intValue).sorted().toArray();
    }
}
