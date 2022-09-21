import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    let length = progresses.count
    var progressesRemainingTime = [Int]()
    for arrayPosition in 0...length-1 {
        let remainingAmount = 100 - progresses[arrayPosition]
        let remainingTime = remainingAmount % speeds[arrayPosition] == 0 ? remainingAmount / speeds[arrayPosition] : (remainingAmount / speeds[arrayPosition]) + 1
        progressesRemainingTime.append(remainingTime)
    }
    var que = [Int]()
    var result = [Int]()
    for progressRemainingTime in progressesRemainingTime {
        if que.isEmpty {
            que.append(progressRemainingTime)
            continue
        }
        if que.max()! >= progressRemainingTime {
            que.append(progressRemainingTime)
        } else {
            result.append(que.count)
            que.removeAll()
            que.append(progressRemainingTime)
        }
    }
    if !que.isEmpty {
        result.append(que.count)
    }
    return result
}
