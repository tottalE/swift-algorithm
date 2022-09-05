let input = readLine()?.split(separator: " ").map{Int($0)!}

if let test = input {
    print(test[0] + test[1])
    print(test[0] - test[1])
    print(test[0] * test[1])
    print(test[0] / test[1])
    print(test[0] % test[1])
} else {
    print("Nothing")
}
