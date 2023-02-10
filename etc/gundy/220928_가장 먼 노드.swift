import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var links: [[Int]] = .init(repeating: [], count: n + 1)
    var isVisited: [Bool] = .init(repeating: false, count: n + 1)
    var stepOfNodes: Dictionary<Int, Int> = [:]
    edge.forEach {
        links[$0[0]].append($0[1])
        links[$0[1]].append($0[0])
    }
    var currentNodes: Set<Int> = [1]
    var currentStep: Int = 1
    while !currentNodes.isEmpty {
        currentNodes.forEach {
            isVisited[$0] = true
        }
        var nodes: Set<Int> = []
        for node in currentNodes {
            for linkedNodeNumber in links[node] {
                if !isVisited[linkedNodeNumber] {
                    stepOfNodes[linkedNodeNumber] = currentStep
                    isVisited[linkedNodeNumber] = true
                    nodes.insert(linkedNodeNumber)
                }
            }
        }
        currentStep += 1
        currentNodes = nodes
    }
    let lastStep = currentStep - 2
    return stepOfNodes.filter {
        $0.value == lastStep
    }.count
}
