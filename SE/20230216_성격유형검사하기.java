class Solution {
    public String solution(String[] survey, int[] choices) {
        String answer = "";
        // 성격 유형 인덱스
        // R, T, F, C, M, J, A, N 
        int[] index = new int[8];
        int[] score = {0, 3, 2, 1, 0, 1, 2, 3};
        String[] type = {"R", "T", "C", "F", "J", "M", "A", "N"};
        
        for (int i = 0; i< survey.length; i++) {
            String[] tmp = survey[i].split("");
            if (choices[i] > 4) {
                for (int j = 0; j<index.length; j++) {
                String s = tmp[1];
                if (type[j].equals(s)) {
                    index[j] += score[choices[i]];  
                    } 
                }        
            } else if (choices[i] < 4) {
                for (int j = 0; j<index.length; j++) {
                String s = tmp[0];
                    if (type[j].equals(s)) {
                    index[j] += score[choices[i]];  
                    } 
                }  
            }        
        }
  
        for (int i =0; i<type.length-1; i+=2) {
            if (index[i] > index[i+1]) {
                answer+=type[i];
            } else if ( index[i] == index[i+1]) {
                answer+=type[i];
            } else{
                answer+= type[i+1];
            }
        }
        
        return answer;
    }
}

// survey 인덱스의 순서에 따라 유형 인덱스에 ++을 한다. 
// 
