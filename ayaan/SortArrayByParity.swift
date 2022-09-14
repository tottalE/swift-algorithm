class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        return nums.sorted(by: <).reduce(into: [[Int]](repeating: [], count: 2), {
            $1 % 2 == 0 ? $0[0].append($1) : $0[1].append($1)
        }).flatMap({$0})
    }
}
