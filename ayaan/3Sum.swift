class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var combinationArray: Set<[Int]> = Set<[Int]>()
        var hasZero = false
        var numbers = nums.filter({$0 != 0}).sorted(by: <)
        if nums.count - numbers.count >= 3 {
            combinationArray.insert([0, 0, 0])
        }
        if nums.count - numbers.count > 0 {
            hasZero = true
        }
        let numberSet = Set(nums)
        if numberSet.count == 3 && numberSet.reduce(0, +) == 0 {
            combinationArray.insert(Array(numberSet))
            return Array(combinationArray)
        }
        for i in 0..<numbers.count {
            for j in (i + 1)..<numbers.count {
                let sum = numbers[i] + numbers[j]
                if sum > 100000 || sum < -100000 {
                    continue
                }
                if sum == 0 && hasZero {
                    combinationArray.insert([numbers[i], numbers[j], 0])
                }
                for k in (j + 1)..<numbers.count {
                    if sum + numbers[k] == 0 {
                        combinationArray.insert([numbers[i], numbers[j], numbers[k]])
                    }
                }
            }
        }
        return Array(combinationArray)
    }
}
