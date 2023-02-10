class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = []
        if let firstZero = nums.firstIndex(of: 0),
           let lastTarget = nums.lastIndex(of: target) {
            if firstZero != lastTarget {
                switch firstZero > lastTarget {
                case true:
                    return [lastTarget, firstZero]
                default:
                    return [firstZero, lastTarget]
                }
            }
        } else if let firstHalf = nums.firstIndex(of: target/2),
                  let lastHalf = nums.lastIndex(of: target/2) {
            if firstHalf != lastHalf {
                return [firstHalf, lastHalf]
            }
        } else if let firstDouble = nums.firstIndex(of: target*2),
                  let lastNegative = nums.lastIndex(of: -target) {
            if firstDouble != lastNegative {
                return [firstDouble, lastNegative]
            }
        }
        for index in 0...nums.count-2 {
            var secondIndex = index + 1
            while secondIndex < nums.count {
                if nums[index] + nums[secondIndex] == target {
                    result = [index, secondIndex]
                    break
                } else {
                    secondIndex += 1
                }
            }
            
        }
        return result
    }
}
