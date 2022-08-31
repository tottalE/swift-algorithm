/* 2739번
: N을 입력받은 뒤, 구구단 N단을 출력하는 프로그램을 작성하시오. 출력 형식에 맞춰서 출력하면 된다. */

gugudan()

func gugudan() {
    let input = readLine()
    guard let number = input else { return }
    guard let gugudanNumber = Int(number) else { return }

    for i in 1...9 {
        print("\(gugudanNumber) * \(i) = \(gugudanNumber * i)")
    }
}
