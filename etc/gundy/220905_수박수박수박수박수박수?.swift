func solution(_ n: Int) -> String {
    let subak: [String] = ["수", "박"]
    var count: Int = n
    var value: String = ""
    while count > 0 {
        value += subak[0]
        count -= 1
        if count > 0 {
            value += subak[1]
            count -= 1
        }
    }
    return value
}
