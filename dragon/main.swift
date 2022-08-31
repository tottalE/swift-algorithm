/* 1008번
: 두 정수 A와 B를 입력받은 다음, A/B를 출력하는 프로그램을 작성하시오. */

AB()

func AB() {
    let input = readLine()!.split(separator: " ").map{ Double($0)! }
    print("\(input[0] / input[1])")
}
