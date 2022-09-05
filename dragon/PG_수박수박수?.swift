func solution(_ n:Int) -> String {
    var arr = [String]()
    for test in 1...n {
        if test % 2 == 1 {
            arr.append("수")
        } else {
            arr.append("박")
        }
    }
    return arr.joined()
}

let randomNum = Int.random(in: 1...10)

let testPrint = solution(randomNum)
print(testPrint)
