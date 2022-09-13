func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var arr: [Int] = Array(repeating: 0, count: nums.count)
    var n = 0
    var m = nums.count - 1
    
    for num in nums {
        if num % 2 == 0 {
            arr[n] = num
            n += 1
        } else {
            arr[m] = num
            m -= 1
        }
    }
    
    return arr
}
