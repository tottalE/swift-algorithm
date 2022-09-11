// 3Sum - Time Error

let test1 = Solution().threeSum([-1,0,1,2,-1,-4])
let test2 = Solution().threeSum([0,1,1])
let test3 = Solution().threeSum([0,0,0])

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var input = [Int]()
        var sort = [Int]()
        var output = [[Int]]()
        let count1 = 0
        var count2 = 1
        var count3 = 2
        
        for a in count1...nums.count-3 {
            for b in count2...nums.count-2 {
                for c in count3...nums.count-1 {
                    if nums[a] + nums[b] + nums[c] == 0 {
                        input = [nums[a], nums[b], nums[c]]
                        sort = input.sorted()
                        if output.contains(sort) == false {
                            output.append(sort)
                        }
                    }
                }
                if count3 < nums.count-1 {
                    count3 += 1
                }
            }
            if count2 < nums.count-2 {
                count2 += 1
            }
            count3 = count2 + 1
        }
        
        print(output)
        return output
    }
}
