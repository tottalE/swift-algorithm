class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numbers = nums
        var targetNum: Int? = nil
        var result: [Int] = []
        if nums.count == 2 {
            return [0, 1]
        }
        for (index, value) in nums.enumerated() {
            if let targetNum = targetNum {
                if value == targetNum {
                    result.append(index)
                    break
                }
            } else {
                let reducingNumber = target - value
                if nums.contains(reducingNumber) {
                    numbers.remove(at: index)
                    if reducingNumber != value || numbers.contains(reducingNumber) {
                        result.append(index)
                        targetNum = target - value
                    }
                }
            }
        }
        
        return result
    }
}
