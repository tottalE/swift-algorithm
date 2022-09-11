import Foundation

let test = Solution()

let example = test.twoSum([2,7,11,15], 9)
let example1 = test.twoSum([3,2,4], 6)
let example2 = test.twoSum([3,3], 6)

print(example)
print(example1)
print(example2)

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let a = 0
        var b = 1
        var output = [Int]()
        
        for i in a...nums.count-2 {
            for j in b...nums.count-1 {
                if target == nums[i] + nums[j] {
                    if output.contains(i) == false && output.contains(j) == false {
                        output.append(i)
                        output.append(j)
                    }
                }
            }
            if b < nums.count {
                b += 1
            }
        }
        return output
    }
}
