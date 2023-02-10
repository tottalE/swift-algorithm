func solution(_ n:Int) -> String {
    return (1...n).map(){$0 % 2 == 0 ? "박" : "수"}.joined()
}
