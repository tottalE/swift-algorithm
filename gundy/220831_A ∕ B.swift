if let numbers = readLine()?.split(separator: " ") {
    if let A = Double(numbers[0]), let B = Double(numbers[1]) {
        print(A/B)
    }
}
