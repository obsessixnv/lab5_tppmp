func sortArray(_ array: [Int], using algorithm: String = "bubble") -> [Int] {
    var arr = array  // Створюємо копію масиву для сортування
    
    if algorithm == "selection" {
        // Алгоритм сортування вибором
        for i in 0..<arr.count - 1 {
            var minIndex = i
            for j in i + 1..<arr.count {
                if arr[j] < arr[minIndex] {
                    minIndex = j
                }
            }
            if minIndex != i {
                // Обмін значень
                let temp = arr[i]
                arr[i] = arr[minIndex]
                arr[minIndex] = temp
            }
        }
    } else {
        // Алгоритм сортування бульбашкою
        for i in 0..<arr.count - 1 {
            for j in 0..<arr.count - i - 1 {
                if arr[j] > arr[j + 1] {
                    // Обмін значень
                    let temp = arr[j]
                    arr[j] = arr[j + 1]
                    arr[j + 1] = temp
                }
            }
        }
    }
    
    return arr
}

// Приклади використання
let array = [64, 34, 25, 12, 22, 11, 90]
print("Сортування бульбашкою:", sortArray(array))  // За замовчуванням бульбашка
print("Сортування вибором:", sortArray(array, using: "selection"))
