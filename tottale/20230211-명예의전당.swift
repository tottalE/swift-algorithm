func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var scoreCount = score.count
    var mj: [Int] = []
    var lowScores: [Int] = []
    // 첫번째 원소일 경우
    for i in 0..<k {
        mj.append(score[i])
        lowScores.append(mj.min()!)
    }
    mj.sort()
    
    for i in k..<scoreCount {
        let minMJ = mj[0]
        if minMJ < score[i] {
            mj[0] = score[i]
            mj.sort()
            lowScores.append(mj[0])
        } else {
            lowScores.append(minMJ)
        }
    }
    
    return lowScores
}
