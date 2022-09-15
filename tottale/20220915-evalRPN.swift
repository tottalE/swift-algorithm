func evalRPN(_ tokens: [String]) -> Int {
    var stack: [Int] = []
    for char in tokens {
        if let num = Int(char) {
            stack.append(num)
        } else if stack.count >= 2{
            let first = stack.popLast()!
            let second = stack.popLast()!
            if char == "+" {
                let sum = second + first
                stack.append(sum)
            } else if char == "-" {
                let sum = second - first
                stack.append(sum)
            } else if char == "*" {
                let sum = second * first
                stack.append(sum)
            } else if char == "/" {
                let sum = second / first
                stack.append(sum)
            }
        }
    }
    return stack.popLast()!
}
