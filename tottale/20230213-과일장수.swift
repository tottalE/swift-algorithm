func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result: Int = 0
    var boxCount = score.count / m
    var score = score
    var scores = score.sorted()
    var index = scores.count - m
    
    for _ in 0..<boxCount {
        var appleScore = scores[(index)]
        index -= m
        result += appleScore * m
    }
    
    return result
}
