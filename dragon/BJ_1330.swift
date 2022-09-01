
import Foundation

let s:String! = readLine()
let input = s.split(separator: " ")
let a:Int! = Int(input[0])
let b:Int! = Int(input[1])

if a < b {
    print("<")
}
else if a > b {
    print(">")
}
else if a == b {
    print("==")
}
