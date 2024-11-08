import Foundation

// Функція перевірки належності точки колу
func isPointInsideCircle(circle: (x: Int, y: Int, radius: Int), point: (x: Int, y: Int)) -> Bool {
    let distanceSquared = (point.x - circle.x) * (point.x - circle.x) + (point.y - circle.y) * (point.y - circle.y)
    return distanceSquared <= circle.radius * circle.radius
}

// Функція, яка повертає найбільше коло, в яке входить точка
func findLargestCircleContainingPoint(circles: [(x: Int, y: Int, radius: Int)], point: (x: Int, y: Int)) -> (x: Int, y: Int, radius: Int)? {
    var largestCircle: (x: Int, y: Int, radius: Int)? = nil

    for circle in circles {
        if isPointInsideCircle(circle: circle, point: point) {
            if let currentLargest = largestCircle {
                if circle.radius > currentLargest.radius {
                    largestCircle = circle
                }
            } else {
                largestCircle = circle
            }
        }
    }
    
    return largestCircle
}

// Приклад використання
let circles = [(x: 0, y: 0, radius: 5), (x: 3, y: 3, radius: 5), (x: 1, y: 1, radius: 3)]
let point = (x: -3, y: -3)

if let largestCircle = findLargestCircleContainingPoint(circles: circles, point: point) {
    print("Найбільше коло, в яке входить точка: Центр (\(largestCircle.x), \(largestCircle.y)), Радіус: \(largestCircle.radius)")
} else {
    print("Жодне коло не містить точку.")
}
