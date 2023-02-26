import java.util.Scanner;

class Solution {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();

        String s = "*";
        String s2 = s.repeat(a) + "\n";
        System.out.println(s2.repeat(b));
    }
}
