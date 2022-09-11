func threeSum(_ nums: [Int]) -> [[Int]] {
    let nums = nums.sorted()
    var answer = [[Int]]()
    
    // 들어온 nums의 개수가 3보다 작을 때 무조건 빈배열을 리턴
    if nums.count < 3 {
        return answer
    }
    
    if nums.count == 3 {
        if nums.reduce(0, { $0 + $1 }) == 0 {
            return [nums]
        } else {
            return answer
        }
    }
    
    for i in 0..<nums.count - 2 {
        if i>0, nums[i] == nums[i-1] { continue }
        let firstCnt = nums[i]
        // i의 뒤와 맨 뒤에서 부터 포인터를 하나씩 옮겨줌
        var m = i+1
        var n = nums.count-1
        while m < n {
            if firstCnt + nums[n] + nums[m] == 0 {
                answer.append([firstCnt, nums[n], nums[m]])
                m += 1
                n -= 1

                while nums[m] == nums[m - 1] && m < n {
                    m += 1
                }
                
                
                while nums[n] == nums[n + 1] && m < n {
                    n -= 1
                }
            } else if firstCnt + nums[m] + nums[n] < 0 {
                m += 1
            } else {
                n -= 1
            }
        }
        
    }
    return answer
}
