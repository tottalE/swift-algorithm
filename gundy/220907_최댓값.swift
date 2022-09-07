func maximum() {
    var numbers: [Int] = [0]
    while numbers.count < 10 {
        guard let input = readLine(), let number = Int(input) else {
            return
        }
        numbers.append(number)
    }
    var number: Int = 0
    var indexNumber: Int = 0
    for index in 1...9 {
        if numbers[index] > number {
            number = numbers[index]
            indexNumber = index
        }
    }
    print(number)
    print(indexNumber)
}

maximum()
