var words = [String]()

func readWords() -> [String] {
    var line : String?
    repeat {
        line = readLine()
        if line != nil {
            words.append(line!)
        }
    } while line != nil
    return words
}

func bubbleSort(_ array: [String]) -> [String] {
    var a = readWords()
    for _ in 0 ..< a.count - 1 {
        for x in 0 ..< a.count - 1 {
            if a[x] > a[x+1] {
                let temp = a[x]
                a[x] = a[x+1]
                a[x+1] = temp
            }
        }
    }
    return a
}

let a = bubbleSort(words)

for x in a {
    print(x)
}
