if let input = readLine(), let year = Int(input) {
    if year % 100 != 0 {
        if year % 4 == 0 {
            print(1)
        } else {
            print(0)
        }
    } else if year % 400 == 0 {
        print(1)
    } else {
        print(0)
    }
}
