class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for index in 0...nums.count-1 {
            print(nums[index])
            for index2 in 0...nums.count-1 {
                if nums[index] + nums[index2] == target {
                    guard index != index2 else {
                        break
                    }
                    return [index, index2]
                }
            }
        }
        return []
    }
}
