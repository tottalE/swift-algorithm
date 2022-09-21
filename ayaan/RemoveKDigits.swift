struct Stack {
    var elements: [Int] = []
    var count: Int {
        return elements.count
    }
    var isEmpty: Bool {
        return elements.isEmpty
    }

    mutating func push(_ element: Int) {
        elements.append(element)
    }

    mutating func pop() -> Int? {
        return elements.popLast()
    }

    mutating func peek() -> Int? {
        return elements.last
    }
}

class Solution {
    func removeKdigits(_ num: String, _ k: Int) -> String {
        if num.count == k {
            return "0"
        }
        var removeCount = 0
        var numberArray: [Int] = num.compactMap({ Int(String($0)) })
        var numberStack: Stack = Stack()
        while let target = numberArray.first {
            if removeCount == k {
                break
            }
            if numberStack.isEmpty {
                numberStack.push(target)
            } else {
                while let popNumber = numberStack.pop() {
                    if target >= popNumber {
                        numberStack.push(popNumber)
                        numberStack.push(target)
                        break
                    } else {
                        removeCount += 1
                        if numberStack.isEmpty || removeCount == k{
                            numberStack.push(target)
                            break
                        }
                    }
                }
            }
            numberArray.removeFirst()
        }
        while !numberArray.isEmpty {
            numberStack.push(numberArray.removeFirst())
        }
        while removeCount < k {
            numberStack.pop()
            removeCount += 1
        }
        if numberStack.isEmpty {
            return "0"
        }
        var answer: String = numberStack.elements.map({String($0)}).joined()
        while answer.first! == "0" {
            answer.removeFirst()
            if answer.isEmpty {
                return "0"
            }
        }
        return answer
    }
}
