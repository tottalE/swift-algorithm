let nums = readLine()!.split(separator: " ").map { Int($0)! }
let a = nums[0]
let b = nums[1]
print(a+b, terminator: "\n")
print(a-b, terminator: "\n")
print(a*b, terminator: "\n")
print(a/b, terminator: "\n")
print(a%b, terminator: "\n")
