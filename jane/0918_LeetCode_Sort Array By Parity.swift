func sortArrayByParity(_ nums: [Int]) -> [Int] {
    var numss = nums
    for index in 0...numss.count-1 {
        if numss[index] % 2 == 0 {
            let aa = numss[index]
            numss.remove(at: index)
            numss.insert(aa, at: 0)
        }
    }
    return numss
}
