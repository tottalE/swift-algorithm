func solution(_ s:String) -> Bool {
    if s.count != 4 && s.count != 6 {
        return false
    }
    
    guard Int(s) != nil else { 
        return false
    }

    return true
}
