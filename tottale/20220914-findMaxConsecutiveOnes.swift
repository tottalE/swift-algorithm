func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
    var maxNum = 0
    var count = 0
    if nums[0] == 1 {
        count += 1
    }
    
    if nums.count == 1 {
        return count
    }
    
    for i in 1..<nums.count {
        if nums[i] == 1 {
            if nums[i-1] == 1 {
                count += 1
            } else {
                if count > maxNum {
                    maxNum = count
                }
                count = 1
            }
        }
        if i == nums.count - 1 {
            if count > maxNum {
                maxNum = count
            }
        }
    }
    return maxNum
}
