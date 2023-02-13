class Solution {
    public int solution(int[] number) {
        int answer = 0;
        
        //저는 왜 3중 반복문밖에 생각나지 않을까요
        for(int i=0; i<number.length; i++) {
            for(int j=i+1; j<number.length; j++) {
                for(int k=j+1; k<number.length; k++) {
                    if(number[i] + number[j] + number[k] == 0) {
                        answer++;
                    }
                }
            }
        }
        
        return answer;
    }
}
