//
//  Order.swift
//  Restaurant
//
//  Created by Anna Hakobyan on 24.09.24.
//

import Foundation

enum Appetizer: Int {
    case greek = 3000
    case caesar = 2600
    case green = 2300
}

enum MainCourse: Int {
    case pizza = 2600
    case pasta = 3400
    case chicken = 2300
    case fries = 1700
}

enum Dessert: Int {
    case iceCream = 1800
    case brownie = 2400
    case lavaCake = 2300
}

enum Beverage: Int {
    case coffee = 2600
    case tea = 3400
    case juice = 2300
    case soda = 1700
    case water = 1000
    case wine = 4000
}

final class Order {
    private let appetizers: [Appetizer]
    private let mainCourses: [MainCourse]
    private let desserts: [Dessert]
    private let beverages: [Beverage]
    public var bill: Double
    public var orderDetails = ""

    init(appetizers: [Appetizer], mainCourses: [MainCourse], desserts: [Dessert], beverages: [Beverage]) {
        self.appetizers = appetizers
        self.mainCourses = mainCourses
        self.desserts = desserts
        self.beverages = beverages
        self.bill = 0
        finishOrder()//for counting the total price and generationg the description of the order
    }

    private func totalPrice() -> Double {
            let appetizerPrice = appetizers.reduce(0) { $0 + $1.rawValue }
            let mainCoursePrice = mainCourses.reduce(0) { $0 + $1.rawValue }
            let dessertPrice = desserts.reduce(0) { $0 + $1.rawValue }
            let beveragePrice = beverages.reduce(0) { $0 + $1.rawValue }

            let total = appetizerPrice + mainCoursePrice + dessertPrice + beveragePrice

            return Double(total)
        }

    private func finishOrder() {
        if !appetizers.isEmpty {
            orderDetails += "Appetizers: " + appetizers.map { $0.description }.joined(separator: ", ") + "\n"
        }

        if !mainCourses.isEmpty {
            orderDetails += "Main Courses: " + mainCourses.map { $0.description }.joined(separator: ", ") + "\n"
        }

        if !desserts.isEmpty {
            orderDetails += "Desserts: " + desserts.map { $0.description }.joined(separator: ", ") + "\n"
        }

        if !beverages.isEmpty {
            orderDetails += "Beverages: " + beverages.map { $0.description }.joined(separator: ", ") + "\n"
        }

        self.bill = totalPrice()
    }
}

// Extensions for the enums to provide descriptions
extension Appetizer {
    var description: String {
        switch self {
        case .greek: return "Greek Salad"
        case .caesar: return "Caesar Salad"
        case .green: return "Green Salad"
        }
    }
}

extension MainCourse {
    var description: String {
        switch self {
        case .pizza: return "Pizza"
        case .pasta: return "Pasta"
        case .chicken: return "Chicken"
        case .fries: return "Fries"
        }
    }
}

extension Dessert {
    var description: String {
        switch self {
        case .iceCream: return "Ice Cream"
        case .brownie: return "Brownie"
        case .lavaCake: return "Lava Cake"
        }
    }
}

extension Beverage {
    var description: String {
        switch self {
        case .coffee: return "Coffee"
        case .tea: return "Tea"
        case .juice: return "Juice"
        case .soda: return "Soda"
        case .water: return "Water"
        case .wine: return "Wine"
        }
    }
}
