// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPlayground",
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "SwiftPlayground"
        ),
    ]
)

// The strings I will be using for gathering info on what the student wants.
var drinks: [String] = [
    "Juice - $4.00",
    "Up & Go - $4.50",
    "Gatorade - $6.00",
    "Water - $3.00",
    "Coffee - $6.00",
    "Fruit soda drink - $4.00"

]

var foods: [String] = [
    "Burger - $7.00",
    "Sushi - $4.00",
    "Pizza - $5.00",
    "Garlic bread - $4.00",
    "Pork bun - $5.00",
    "Dumplings - $5.00",


]

var foodCounter = [""]

var drinkCounter = [""]

print("Welcome to the canteen. Please follow the instructions below")



var isRunning = true
while isRunning {
    // Asking for user input.
        print("Do you wish to buy a food or a drink:")
        let foodOrDrink = (readLine()!)

// Outcome dependant on user input.
if foodOrDrink.lowercased() == "Food" {
print("what food do you want, 1-6?")
foods.enumerated().forEach { index, foods in
    print("\(index + 1). \(foods)")
    }
        let whatFood = (readLine()!)
        let food = foods[Int(whatFood)! - 1]
        foodCounter.append(food)
        print("\(food) has been added")

// Telling the loop to keep going.
    isRunning = true

} else if foodOrDrink.lowercased() == "drink" {
print("what drink do you want, 1-6?")
drinks.enumerated().forEach { index, drinks in
    print("\(index + 1). \(drinks)")
    }
        let whatDrink = (readLine()!)
        let drink = drinks[Int(whatDrink)! - 1]
        drinkCounter.append(drink)
        print("\(drink) has been added")

// Telling the loop to keep going.
    isRunning = true

} else if foodOrDrink == "" {
        isRunning = false

} else {
    // If the input is unexpected
    print("Please clarify what you wish to do, if you wish to select a drink or food, please enter 'drink' or 'food'")
    print("Otherwise if you are done and wish to see your final price please press enter")

        isRunning = true

}
}

print(foodCounter)
print(drinkCounter)