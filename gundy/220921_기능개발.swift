import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var tuples: [(Double, Double)] = []
    for (progress, speed) in zip(progresses, speeds) {
        tuples.append((Double(progress), Double(speed)))
    }
    var needDays: [Int] = []
    tuples.forEach {
        needDays.append(Int(ceil((100 - $0.0) / $0.1)))
    }
    var sortedDays: [Int] = []
    var count: Int = 0
    var result: [Int] = []
    needDays.forEach{
        if sortedDays.isEmpty {
            sortedDays.append($0)
            count += 1
        } else {
            if sortedDays.last! >= $0 {
                count += 1
            } else {
                sortedDays.append($0)
                result.append(count)
                count = 1
            }
        }
    }
    result.append(count)
    return result
}
