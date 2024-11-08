func factorial(_ n: Int) -> Int {
    var result = 1
    for i in 1...n {
        result *= i
    }
    return result
}

// Приклад використання
let number = 5
print("Факторіал числа \(number) дорівнює \(factorial(number))")
