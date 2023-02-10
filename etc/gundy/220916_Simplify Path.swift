class Solution {
    func simplifyPath(_ path: String) -> String {
        let splitPath = path.split(separator: "/")
        var simplePath: [String] = []
        if !splitPath.isEmpty {
            for index in 0...splitPath.count - 1 {
                switch splitPath[index] {
                case ".":
                    continue
                case "..":
                    if index != 0 {
                        if simplePath.count < 2 {
                            continue
                        }
                        for _ in 1...2 {
                            simplePath.removeLast()
                        }
                    }
                default:
                    simplePath.append(contentsOf: [String(splitPath[index]), "/"])
                }
            }
        }
        if !simplePath.isEmpty {
            while simplePath[simplePath.count - 1] == "/" {
                simplePath.removeLast()
            }
        }
        return "/" + simplePath.joined(separator: "")
    }
}
