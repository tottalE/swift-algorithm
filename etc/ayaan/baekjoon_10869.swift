import Foundation
if let inputData = readLine() {
    let numbers = inputData.components(separatedBy: " ").compactMap { Int($0) }
    print(numbers[0] + numbers[1])
    print(numbers[0] - numbers[1])
    print(numbers[0] * numbers[1])
    print(numbers[0] / numbers[1])
    print(numbers[0] % numbers[1])
}
