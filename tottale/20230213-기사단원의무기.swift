import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var steels = 0
    for solNum in 1...number {
        var solPower = 0
        var i = 1
        while i*i <= solNum {
            if i*i == solNum {
                solPower += 1
            } else if solNum%i == 0 {
                solPower += 2
            }
            i += 1
        }
        if solPower > limit {
            steels += power
        } else {
            steels += solPower
        }
    }
    return steels
}
