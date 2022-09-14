class Solution {
    func isValid(_ s: String) -> Bool {
        if s.isEmpty || s.count < 2 {
            return false
        }
        var stackArray: [String] = []
        var someLetters: String = s
        
        while !someLetters.isEmpty {
            let letter = String(someLetters.removeFirst())
            if isClosedBracket(letter) {
                guard let pop = stackArray.popLast() else {
                    return false
                }
                if !isMatchable(pop, letter) {
                    return false
                }
            } else {
                stackArray.append(letter)
            }
        }
        
        if stackArray.isEmpty {
            return true
        } else {
            return false
        }
    }
    
    func isMatchable(_ open: String, _ close: String) -> Bool {
        if open == "(" && close == ")" {
            return true
        } else if open == "{" && close == "}" {
            return true
        } else if open == "[" && close == "]" {
            return true
        } else {
            return false
        }
    }
    
    func isClosedBracket(_ targetBracket: String) -> Bool {
        return [")", "}", "]"].contains(targetBracket)
    }
}
