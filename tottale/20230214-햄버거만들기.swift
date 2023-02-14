import Foundation

func solution(_ ingredient:[Int]) -> Int {
    var stack: [Int] = []
    var burgerCount = 0
    
    ingredient.forEach { ing in
        stack.append(ing)
        if stack.count >= 4 {
            if stack[stack.count-4..<stack.count] == [1, 2, 3, 1] {
                stack = Array(stack[0..<stack.count - 4])
                burgerCount += 1
            }
        }
    }
    
    return burgerCount
}
