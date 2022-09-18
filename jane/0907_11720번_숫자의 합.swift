let nums1 = Int(readLine()!)!
let nums2 = Array(readLine()!).map { Int(String($0))! }

var sum = 0
for i in 0...nums1-1 {
    sum += nums2[i]
}
print(sum)
