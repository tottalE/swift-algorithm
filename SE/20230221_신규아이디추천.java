class Solution {
    public String solution(String new_id) {
        String answer = "";
        
        // ① 대문자 -> 소문자
        new_id = new_id.toLowerCase();
        // ② 문자 제거
        answer = new_id.replaceAll("[^\\.a-z0-9-_]", "");

        // ③ 중복 제거
        answer = answer.replaceAll("\\.{2,}", ".");
        while (true) {
          // ④ 맨 앞, 맨 끝 . 제거
            if (answer.indexOf('.') == 0) {
                answer = answer.substring(1);
            } 
            if (answer.lastIndexOf('.') == answer.length() -1) {
                answer = answer.replaceFirst(".$", "");
            }  // =>  answer = answer.replaceAll("^[.]|[.]$", "");
            if (answer.length() >15) {
                answer = answer.substring(0, 15); 
            } 
            if (answer.length() <3 && answer.length()>0) {
                int n = 3- answer.length();
                String n2 = Character.toString(answer.charAt(answer.length()-1));
                answer += n2.repeat(n);
            } 
            if(answer.length() == 0) {
                answer = "aaa";
            }
            if (answer.indexOf('.') != 0
               && answer.lastIndexOf('.') != answer.length() -1
               && answer.length() != 0
               && answer.length() <16
               && answer.length() > 0
               ) {
                break;
            }
        }
      
        return answer;
    }
}
