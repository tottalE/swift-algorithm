import java.util.*;

class Solution {
    public ArrayList<Integer> solution(int N, int[] stages) {
        ArrayList<Integer> answer = new ArrayList<>();
        HashMap<Integer, Double> map = new HashMap<>();
       
        for(int j=0; j<N; j++) {
            int d = 0;
            int n = 0;
            for (int i=0; i<stages.length; i++) {
                if (stages[i] > j) {
                    d += 1;
                }
                if (stages[i] == j+1) {
                    n +=1;
                }
            }
            
            //System.out.println("n: "+ n);
            //System.out.println("d: " + d);
            double tmp = (double) n* (1.0)/ d;
            if (Double.isNaN(tmp)) tmp = 0.0;
            map.put(j+1,tmp);
            
            //System.out.println(map);
        }
        
        List<Integer> listKeySet = new ArrayList<>(map.keySet());
        
        Collections.sort(listKeySet, (value1, value2) -> (map.get(value2).compareTo(map.get(value1))));
        
        for(Integer key : listKeySet) {
			answer.add(key);
		}
        
        return answer;
    }
}
