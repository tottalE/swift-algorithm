test()

func test() {
    let length = readLine()
    guard let lengthNum = Int(length ?? "0") else { return }
    
    let input = Array(readLine()!).map{ Int( String($0) )! }
    var sum = 0
    
    for num in 0..<lengthNum {
        sum = input[num] + sum
    }
    
    print(sum)
}
