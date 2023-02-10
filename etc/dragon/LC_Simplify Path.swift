let test = Solution().simplifyPath("/../")
print(test)

class Solution {
    func simplifyPath(_ path: String) -> String {
        var stack: [String] = []
        
        for test in path.split(separator: "/") {
            if test == "." {
                continue
            } else if test == ".." {
                if stack.isEmpty == false {
                    stack.removeLast()
                }
            } else {
                stack.append(String(test))
            }
        }
        
        return "/\(stack.joined(separator: "/"))"
    }
}
