let test = Solution().evalRPN(["2","1","+","3","*"])

class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack = [Int]()
        var output = 0
        for token in tokens {
            if let num = Int(token) {
                stack.append(num)
            } else {
                guard let rightNum = stack.popLast() else { return 0 }
                guard let leftNum = stack.popLast() else { return 0 }
                switch token {
                case "+":
                    stack.append(leftNum + rightNum)
                case "-":
                    stack.append(leftNum - rightNum)
                case "*":
                    stack.append(leftNum * rightNum)
                case "/":
                    stack.append(leftNum / rightNum)
                default:
                    return 0
                }
            }
        }
        
        output = stack.last!
        print(output)
        return output
    }
}
