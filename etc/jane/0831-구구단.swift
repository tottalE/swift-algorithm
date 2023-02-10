var input = Int(readLine()!)!
func printGugu(of number: Int) {
    for count in 1...9 {
        print("\(number) * \(count) = \(number * count)")
    }
}

printGugu(of: input)
