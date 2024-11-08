func analyzeString(_ input: String) {
    var frequency: [Character: Int] = [:]
    
    // Проходимо по кожному символу в рядку
    for char in input {
        if let count = frequency[char] {
            frequency[char] = count + 1
        } else {
            frequency[char] = 1
        }
    }
    
    // Виведення результатів аналізу
    print("Таблиця символів та кількість їх входжень:")
    for (char, count) in frequency {
        print("'\(char)' : \(count) раз(ів)")
    }
}

// Приклад використання
analyzeString("hello world")
