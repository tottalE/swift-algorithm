func decodeString(_ s: String) -> String {
    var stack: [String] = []
    for char in s {
        if char == "]" {
            var substring = ""
            while stack.last != "[" {
                substring = stack.popLast()! + substring
            }
            stack.popLast()
            var digit = ""
            while !stack.isEmpty, let num = Int(stack.last!) {
                digit = stack.popLast()! + digit
            }
            for _ in 0..<Int(digit)!{
                stack.append(substring)
            }
        } else {
            stack.append(String(char))
        }
    }
    return stack.joined()
}
