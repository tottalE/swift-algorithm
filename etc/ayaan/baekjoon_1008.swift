import Foundation

let numberList = readLine()!.components(separatedBy: " ").compactMap(){Double($0)}
print(numberList[0] / numberList[1])
