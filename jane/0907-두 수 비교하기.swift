let nums = readLine()!.split(separator: " ").map { Int($0)! }
let a = nums[0]
let b = nums[1]

if a > b {
    print(">")
} else if a < b {
    print("<")
} else {
    print("==")
}
