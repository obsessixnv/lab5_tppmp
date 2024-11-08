// Операції калькулятора
func add(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func modulus(_ a: Int, _ b: Int) -> Int {
    return a % b
}

func power(_ base: Int, _ exponent: Int) -> Int {
    var result = 1
    for _ in 0..<exponent {
        result *= base
    }
    return result
}

// Основна функція калькулятора
func calculator(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

// Меню вибору операції
func chooseOperation(_ operation: String) -> ((Int, Int) -> Int)? {
    switch operation {
    case "+":
        return add
    case "-":
        return subtract
    case "*":
        return multiply
    case "%":
        return modulus
    case "^":
        return power
    default:
        print("Неправильна операція.")
        return nil
    }
}

// Приклад використання
let a = 5
let b = 3

if let operation = chooseOperation("*") {
    let result = calculator(a, b, operation: operation)
    print("Результат: \(result)")
}
