func simplifyPath(_ path: String) -> String {
    let arr = path.split(separator: "/")
    var directory: [String] = []
    for dir in arr {
        if dir == "." || dir == "" {
            continue
        } else if dir == ".."{
            if directory.count > 0 {
                directory.removeLast()
            }
        } else {
            directory.append("\(dir)")
        }
        print(directory)
    }
    
    return "/" + directory.joined(separator: "/")
}
