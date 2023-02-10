let _ = readLine()!
print(readLine()!.compactMap(){Int(String($0))}.reduce(0, +))
