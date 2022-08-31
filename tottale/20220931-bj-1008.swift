let input = readLine()!.split(separator: " ").map({Double($0)!})
let divided = input[0] / input[1]
print(divided)
