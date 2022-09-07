class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var resultSet: Set<Set<Int>> = []
        var result: [[Int]] = []
        let firstSet: Set<Int> = Set(nums)
        var firstArray: [Int] = nums
        for number in firstSet {
            if let firstIndex = firstArray.firstIndex(of: number) {
                firstArray.remove(at: firstIndex)
            }
        }
        let secondSet: Set<Int> = Set(firstArray)
        for number in secondSet {
            if let firstIndex = firstArray.firstIndex(of: number) {
                firstArray.remove(at: firstIndex)
            }
        }
        let thirdSet: Set<Int> = Set(firstArray)
        let lastArray: [Int] = Array(firstSet) + Array(secondSet) + Array(thirdSet)
        if lastArray.count > 2 {
            for first in 0...lastArray.count-3 {
                var second: Int = first + 1
                while second < lastArray.count-1 {
                    if lastArray[first] + lastArray[second] > Int.max ||
                        lastArray[first] + lastArray[second] < Int.min {
                        continue
                    }
                    var third = second + 1
                    while third < lastArray.count {
                        if lastArray[first] + lastArray[second] + lastArray[third] == 0 {
                            resultSet.insert([lastArray[first], lastArray[second], lastArray[third]])
                        }
                        third += 1
                    }
                    second += 1
                }
            }
        }
        if resultSet.count > 0 {
            resultSet.forEach{
                if $0.count == 2 {
                    if Array($0)[0] + Array($0)[1] * 2 == 0 {
                        result.append([Array($0)[0], Array($0)[1], Array($0)[1]])
                    } else {
                        result.append([Array($0)[0], Array($0)[0], Array($0)[1]])
                    }
                } else if $0.count == 1 {
                    result.append([0, 0, 0])
                } else {
                result.append(Array($0))}
                }
        }
        return result
    }
}
