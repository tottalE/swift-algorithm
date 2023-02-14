import Foundation

func solution(_ food:[Int]) -> String {
    var foodCountArr: [Int] = []
    for num in food {
        if num % 2 == 0 {
            foodCountArr.append(num)
        } else {
            foodCountArr.append(num - 1)
        }
    }
    foodCountArr.insert(1, at: 0)
    let foodCount = foodCountArr.reduce(0) { $0 + $1 }
    
    var foods = Array.init(repeating: 0, count: foodCount)
    let centerCount = foodCount / 2 
    var leftPointer = centerCount - 1
    var rightPointer = centerCount + 1
    for i in 1..<food.count {
        for _ in 0..<food[food.count - i]/2 {
            foods[leftPointer] = food.count - i
            foods[rightPointer] = food.count - i
            leftPointer -= 1
            rightPointer += 1
        }
    }
    let result = foods.map { String($0)}.joined(separator: "")
    return result
}
