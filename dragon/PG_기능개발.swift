import Foundation

print(solution([93,30,55], [1,30,5]))

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var queue: [Int] = []
    var result: [Int] = []
    
    for index in 0...progresses.count - 1 {
        queue.append((100 - progresses[index]) / speeds[index])
    }
    
    while !queue.isEmpty {
        let firstNum = queue.first!
        var count = 0
        
        while !queue.isEmpty && firstNum >= queue.first! {
            count += 1
            queue.removeFirst()
        }
        result.append(count)
        count = 0
    }
    
    return result
}
