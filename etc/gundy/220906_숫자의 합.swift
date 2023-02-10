func makeTotalValue() {
    guard let firstInput = readLine(), let count = Int(firstInput) else {
        return
    }
    guard let secondInput = readLine() else {
        return
    }
    let numbers = Array(secondInput)
    var total: Int = 0
    for index in 0...count-1{
        guard let number = Int(String(numbers[index])) else {
            return
        }
        total = total + number
    }
    print(total)
}

makeTotalValue()
