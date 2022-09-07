var result: (index: Int, maxNumber: Int) = (0, 0)
for index in 1...9 {
    let number = Int(readLine()!)!
    if result.maxNumber < number {
        result = (index, number)
    }
}
print(result.maxNumber, result.index, separator: "\n")
