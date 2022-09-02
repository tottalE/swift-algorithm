func solution(_ s:String) -> Bool {
    if let ss = Int(s), s.count == 4 || s.count == 6 {
        return true
    } else {
        return false
    }
}
