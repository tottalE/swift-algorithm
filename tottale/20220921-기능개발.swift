func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var count = 0
    var progresses = progresses
    var speeds = speeds
    var result: [Int] = []
    
    while !progresses.isEmpty {
        
        // progress를 모두 한번 올려줌
        for i in 0..<progresses.count {
            progresses[i] += speeds[i]
        }
        
        // 첫번째 프로그래스가 100보다 클 때 추가해줌
        while let first = progresses.first, first >= 100 {
            progresses.removeFirst()
            speeds.removeFirst()
            count += 1
        }
        
        // count가 0보다 클때 넣어줌, 초기화
        if count > 0 {
            result.append(count)
            count = 0
        }
    }
    
    
    return result
}
