class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var numbers: [Int] = []
        for index in 0...tokens.count-1 {
            if let number = Int(tokens[index]) {
                numbers.insert(number, at: 0)
            } else {
                let A = numbers[1],
                    B = numbers[0]
                numbers.remove(at: 1)
                numbers.remove(at: 0)
                switch tokens[index] {
                case "+":
                    numbers.insert(A+B, at: 0)
                case "-":
                    numbers.insert(A-B, at: 0)
                case "*":
                    numbers.insert(A*B, at: 0)
                default:
                    numbers.insert(A/B, at: 0)
                }
            }
        }
        return numbers[0]
    }
}
