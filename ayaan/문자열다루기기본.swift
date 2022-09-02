func solution(_ s:String) -> Bool {
    return (s.count == 4 || s.count == 6) && s.filter(){ !$0.isNumber }.count == 0
}
