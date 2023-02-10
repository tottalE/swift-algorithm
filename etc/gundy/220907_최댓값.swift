func maximum() {
    var number: Int = 0
    var indexNumber: Int = 0
    for index in 1...9 {
        guard let input = readLine(), let inputtedNumber = Int(input) else {
            return
        }
        if inputtedNumber > number {
            number = inputtedNumber
            indexNumber = index
        }
    }
    print(number)
    print(indexNumber)
}

maximum()
