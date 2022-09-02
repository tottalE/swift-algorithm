import Foundation

func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        let trim = s.trimmingCharacters(in: .whitespacesAndNewlines)
        guard let test = Int(trim) else { return false }
        return true
    }
    return false
}

print(solution(" 1111111 "))
