class Solution {
    func decodeString(_ s: String) -> String {
        var resultArray: [String] = []
        for element in s {
            switch element {
            case "]":
                var willRepeatingString: String = ""
                var isInterior: Bool = true
                while isInterior == true {
                    guard let lastElement = resultArray.last else {
                        break
                    }
                    if let _ = Int(lastElement) {
                        isInterior = false
                        break
                    }
                    willRepeatingString = lastElement + willRepeatingString
                    resultArray.removeLast()
                }
                var multipleCount: String = ""
                var isNumber: Bool = true
                while isNumber == true {
                    guard let lastElement = resultArray.last else {
                        break
                    }
                    guard let _ = Int(lastElement) else {
                        isNumber = false
                        break
                    }
                    multipleCount = lastElement + multipleCount
                    resultArray.removeLast()
                }
                guard let count = Int(multipleCount) else {
                    return resultArray.joined()
                }
                resultArray.append(String(repeating: willRepeatingString, count: count))
            default:
                resultArray.append(String(element))
            }
        }
        let result = resultArray.joined()
        return result.filter{ $0 != "[" }
    }
}
