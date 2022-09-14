class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        let joinedNumber = nums.map{ String($0) }.joined().split(separator: "0")
        var count: Int = 0
        if joinedNumber.count>0 {
            for index in 0...joinedNumber.count-1 {
                if joinedNumber[index].count > count {
                    count = joinedNumber[index].count
                }
            }
        }
        return count
    }
}
