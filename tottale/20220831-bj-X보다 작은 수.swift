var arr = readLine()!.split(separator: " ").map{Int($0)!}
var array = readLine()!.split(separator: " ").map{Int($0)!}
let size = arr[0]
let num = arr[1]
for n in array {
    if n < num {
        print(n, terminator: " ")
    }
}
