/*
9개의 서로 다른 자연수가 주어질 때, 이들 중 최댓값을 찾고 그 최댓값이 몇 번째 수인지를 구하는 프로그램을 작성하시오.
예를 들어, 서로 다른 9개의 자연수
3, 29, 38, 12, 57, 74, 40, 85, 61
이 주어지면, 이들 중 최댓값은 85이고, 이 값은 8번째 수이다.

첫째 줄에 최댓값을 출력하고, 둘째 줄에 최댓값이 몇 번째 수인지를 출력한다.
*/

test()

func test() {
    var cnt = 1
    var numArray = [Int]()
    var dic = [cnt:Int()]
    
    for _ in 0..<9 {
        let input = readLine()!
        guard let userNum = Int(input) else { return }
        numArray.append(userNum)
        dic.updateValue(cnt, forKey: userNum)
        cnt += 1
    }
    print(numArray.max()!)
    print(dic[numArray.max()!]!)
}

