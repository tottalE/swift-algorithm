class Solution {
    var stack: [Character] = []

    func isValid(_ s: String) -> Bool {
        for char in s {
            if char == "(" || char == "{" || char == "[" {
                stack.append(char)
            } else if char == ")" {
                guard stack.popLast() == "(" else {
                    return false
                }
            } else if char == "}" {
                guard stack.popLast() == "{" else {
                    return false
                }
            } else if char == "]" {
                guard stack.popLast() == "[" else {
                    return false
                }
            } else {
                return false
            }
        }
        
        if stack.count == 0 {
            return true
        } else {
            return false
        }
    }
}
