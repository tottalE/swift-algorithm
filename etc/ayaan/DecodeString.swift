class Solution {
    func decodeString(_ s: String) -> String {
        var letters: String = s
        var result: String = ""
        while !letters.isEmpty {
            let firstCharacter: Character = letters.removeFirst()
            if firstCharacter == "]" {
                var sentencesToBeRepeated: String = ""
                while let lastCharacter: Character = result.popLast() {
                    if lastCharacter == "[" {
                        break
                    } else {
                        sentencesToBeRepeated = String(lastCharacter) + sentencesToBeRepeated
                    }
                }
                var repeatedCount: String = ""
                while let lastCharacter: Character = result.popLast() {
                    if lastCharacter.isNumber {
                        repeatedCount = String(lastCharacter) + repeatedCount
                    } else {
                        result.append(lastCharacter)
                        break
                    }
                }
                let repeatedResult: String = String(repeating: sentencesToBeRepeated, count: Int(repeatedCount)!)
                result.append(repeatedResult)
            } else {
                result.append(firstCharacter)
            }
        }
        return result
    }
}
