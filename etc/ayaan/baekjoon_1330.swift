import Foundation
if let input = readLine() {
    let numbers = input.components(separatedBy: " ").compactMap{Int($0)}
    if Set(numbers).count == 1 {
        print("==")
    } else {
        numbers[0] > numbers[1] ? print(">") : print("<")
    }
}
