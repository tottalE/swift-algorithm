class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        return nums.filter { $0 % 2 == 0 } + nums.filter{ $0 % 2 == 1 }
    }
}
