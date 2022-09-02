func solution(_ s: String) -> Bool {
    switch s.count {
    case 4, 6:
        guard Int(s) != nil else { return false }
        return true
    default:
        return false
    }
}
