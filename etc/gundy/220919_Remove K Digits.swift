class Solution {
    func removeKdigits(_ num: String, _ k: Int) -> String {
        let count: Int = num.count
        if count == k {
            return "0"
        }
        var remainingCount: Int = k
        var resultArray: [Character] = []
        let numbers: [String.Element] = Array(num)
        for index in 0...count - 1 {
            while remainingCount > 0 &&
                    resultArray.isEmpty == false &&
                    resultArray.last! > numbers[index] {
                resultArray.removeLast()
                remainingCount -= 1
            }
            resultArray.append(numbers[index])
        }
        while remainingCount > 0 {
            resultArray.removeLast()
            remainingCount -= 1
        }
        while resultArray.isEmpty != true &&
                resultArray[0] == "0" {
            resultArray.removeFirst()
        }
        return resultArray.isEmpty ? "0" : String(resultArray)
    }
}
