let test1 = Solution().sortArrayByParity([3,1,2,4])

class Solution {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var numsOdd = [Int]()
        var numsEven = [Int]()
        var output = [Int]()
        
        for number in nums {
            if number % 2 == 1 {
                numsOdd.append(number)
            } else {
                numsEven.append(number)
            }
        }
        
        output = numsEven + numsOdd
        
        print(numsOdd)
        print(numsEven)
        print(output)
        return output
    }
}
