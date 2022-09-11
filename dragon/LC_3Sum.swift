// 3Sum - Time Error

let test1 = Solution().threeSum([-1,0,1,2,-1,-4])
let test2 = Solution().threeSum([-2,-1,1,2])
let test3 = Solution().threeSum([-1,-1,-1])

class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 {
            return []
        }
        var output = [[Int]]()
        let arr = nums.sorted()
        
        for i in 0..<arr.count {
            if i > 0 && arr[i] == arr[i - 1] {
                continue
            }
            var left = i+1
            var right = arr.count - 1
            let remain = 0 - arr[i]
            
            while left < right {
                let sum = arr[left] + arr[right]
                if sum == remain {
                    output.append([arr[i], arr[left], arr[right]])
                    while left < right && arr[left] == arr[left + 1] {
                        left += 1
                    }
                    while left < right && arr[right] == arr[right - 1] {
                        right -= 1
                    }
                    left += 1;
                    right -= 1
                } else if sum < remain {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        print(output)
        return output
    }
}
