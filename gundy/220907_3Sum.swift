class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var numbers: [Int] = nums
        let firstSet: Set<Int> = Set(numbers)
        firstSet.forEach {
            if let lastIndex = numbers.lastIndex(of: $0) {
                numbers.remove(at: lastIndex)
            }
        }
        let secondSet: Set<Int> = Set(numbers)
        secondSet.forEach {
            if let lastIndex = numbers.lastIndex(of: $0) {
                numbers.remove(at: lastIndex)
            }
        }
        let thirdSet: Set<Int> = Set(numbers)
        numbers = (Array(firstSet) + Array(secondSet) + Array(thirdSet)).sorted()
        var resultSet: Set<Set<Int>> = []
        var result: [[Int]] = []
        for first in 0...numbers.count - 3 {
            if numbers[first] > 0 {
                break
            }
            var second: Int = first + 1
            while second < numbers.count - 1 {
                if numbers[first] + numbers[second] < -100000 {
                    second += 1
                    continue
                }
                if numbers[first] + numbers[second] > 0 {
                    break
                }
                var third: Int = second + 1
                while third < numbers.count {
                    if numbers[first] + numbers[second] + numbers[third] == 0 {
                        resultSet.insert([numbers[first], numbers[second], numbers[third]])
                        if numbers[second] == numbers[third] {
                            break
                        }
                    } else if numbers[first] + numbers[second] + numbers[third] > 0 {
                        break
                    }
                    third += 1
                }
                second += 1
            }
        }
        resultSet.forEach {
            switch $0.count {
            case 1:
                result.append([0, 0, 0])
            case 2:
                if Array($0)[0] + (2 * Array($0)[1]) == 0 {
                    result.append([Array($0)[0], Array($0)[1], Array($0)[1]])
                } else {
                    result.append([Array($0)[0], Array($0)[0], Array($0)[1]])
                }
            default:
                result.append(Array($0))
            }
        }
        return result
    }
}
