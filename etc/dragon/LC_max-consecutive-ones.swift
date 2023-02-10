let test1 = Solution().findMaxConsecutiveOnes([1,0,1,1,0,1])
let test2 = Solution().findMaxConsecutiveOnes([1])

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var count = 1
        var maxCount = 1
        var output = 0
        for number in 1...nums.count {
            if nums[number-1] > 0 {
                if number < nums.count {
                    if nums[number-1] == nums[number] {
                        count += 1
                        if maxCount < count {
                            maxCount = count
                        }
                        print(number, nums.count, count, maxCount)
                    } else {
                        count = 1
                    }
                }
                output = maxCount
            }
        }
        
        print(output)
        return output
    }
}
