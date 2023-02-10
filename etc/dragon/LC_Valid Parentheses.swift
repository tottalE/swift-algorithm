let test1 = Solution().isValid("{[]}")

class Solution {
    func isValid(_ s: String) -> Bool {
        let input = Array(s.map{String($0)})
        var stack = [String]()
        for a in 0...input.count - 1 {
            if input[a] == "{" || input[a] == "[" || input[a] == "(" {
                stack.append(input[a])
                continue
            }
            
            if input[a] == "}" {
                if stack.popLast() == "{" {
                    continue
                } else {
                    return false
                }
            } else if input[a] == "]" {
                if stack.popLast() == "[" {
                    continue
                } else {
                    return false
                }
            } else if input[a] == ")" {
                if stack.popLast() == "(" {
                    continue
                } else {
                    return false
                }
            }
        }
        
        if stack.count == 0 {
            print(true)
            return true
        }
        
        print(false)
        return false
    }
}
