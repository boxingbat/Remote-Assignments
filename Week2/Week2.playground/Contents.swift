import UIKit

/*
 
 Part 1: Object-Oriented Swift
 
 1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”
*/

enum Gender {
    case male
    case female
    case undefined
}
class Animal {
   
    func eat() {
        print("I eat everything")
    }
    let gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
}

let chopper = Animal(gender: .male)
chopper.eat()

//2.Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.

class Elephant: Animal{
    override func eat() {
        print("I usually eat fruits")
    }
}
let elephant = Elephant(gender: .male)
elephant.eat()

class Tiger: Animal{
    override func eat() {
        print("I usually eat meat")
    }
}
let tiger = Tiger(gender: .female)
tiger.eat()

class Horse: Animal{
    override func eat() {
        print("I usually eat grass")
    }
}
let horse = Horse(gender: .undefined)
horse.eat()

//3.Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.

class Zoo {
var weeklyHot: Animal
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let zoo = Zoo(weeklyHot: tiger)
zoo.weeklyHot = tiger
zoo.weeklyHot = elephant
zoo.weeklyHot = horse

if let test = zoo.weeklyHot as? Tiger {
    print("Tiger")
} else if let test = zoo.weeklyHot as? Elephant {
    print("Elephant")
} else if let test = zoo.weeklyHot as? Horse {
    print("Horse")
}
//4. What is an instance? What does Initilizer do in Class and Struct?

/* instance is like a spec-presence that we have to create first to make the Struct or Class avaliable.instance is indiviual of both Class and Struct
    Initializer is the process of making an instance of a class, structure, or enumeration for use
 */

//5. What’s the difference between Struct and Class ?
/*
 Classes are reference types and structs are value types
 Classes can inherit from another class , also can be deinitialized
 
 structs are value types and do not support inherit. it's immutable, you have to call "mutating
 if you need to modify
 
 */

//6. What’s the difference between reference type and value type ?
/*
 Value Type: When you copy a value type, the instance keeps it's unique copy of the data. If you change one instance, the others will not changed
 Reference Type: When you copy a reference type,the instance shares the data.It only store the location in memmory.If you change one, the others also changed.

 
 */

//7. What’s the difference between instance method and type method ?
/*
 Instance method is a function belonging to an instance of a Class, Struct, or Enum.
 Instance methods can only be used when an instance exists.
 When an instance of a structure or enumeration is made, we have to use "mutating" to modify it
 
 Type methods is called on the type itself (use static in front of function).
 
 */

//8. What does self mean in an instance method and a type method respectively?
/*
 in instance method, self means the instance itself. we can use mutating to assign a new instance by self
 
 in type method, there is no instance , self will refer to the "type", it would not have value
 
 */

//Part 2: Enumerations and Optionals in Swift

//1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
//
//● Please declare an enum named Gasoline to model gasoline.

enum Gasoline: String {
    case gas92 = "92"
    case gas95 = "95"
    case gas98 = "98"
    case diesel = "diesel"
//● Every kind of gasoline has its price. Please declare a computed property named price and a method named getPrice separately in Gasoline enum that both will return different prices depending on different gasoline.
    
//    var price: Int {
//        switch self {
//        case .gas92:
//            return 31
//        case .gas95:
//            return 32
//        case .gas98:
//            return 34
//        case .diesel:
//            return 36
//        }
//
//    }
    
//    func getPrice() -> Int {
//        return self.price
//    }
    
    func getPrice (gasoline: Gasoline) -> Int {
        switch gasoline{
        case .gas92:
            return 31
        case .gas95:
            return 32
        case .gas98:
            return 34
        case .diesel:
            return 36
            
        }
    }
}

//● Please establish raw values for Gasoline. The data type of raw value should be String. For example, Gasoline.oil92.rawvalue should be “92”.

print(Gasoline.gas92.rawValue)

//● Please explain what enum associated value is and how it works.
/*
 different from rawValue, we can declare it while we building enum.
 Raw value is unchangable, and only accept basic type like String , Int
 associated value can be changed and it accept more type than raw value(like object)
 I paste the example from apple website below for my reference
 */
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}
//2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the
//value of a will be nil or Int . You should have learned how to deal with Optional.

//● People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
class Pet {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class People {
    var pet: Pet?
    
    init(pet: Pet?) {
        self.pet = pet
    }
}
//● Please create a People instance. Use guard let to unwrap the pet property and print its name.

let pet = Pet(name: "puppy")
let mike = People(pet: pet)

func showname() {
    guard let petName = mike.pet?.name else{return}
    print(petName)
}
showname()

//● Please create another People instance. Use if let to unwrap the pet property and print its name.
 
let pet2 = Pet(name: "kitty")
let grace = People(pet: pet2)

if let petName2 = grace.pet?.name {
    print(petName2)
}
else {}


//Part 3: Protocol in Swift

//1. Declare a struct Person with a name property type String and a protocol name PoliceMan . There is only one method arrestCriminals with no argument and return void in the protocol.

struct Person {
    var name: String
    var toolman: Bool
    
}

protocol PoliceMan {
    func arrestCrimnals()
}


    
//2. Make struct Person conform to PoliceMan protocol.

extension Person: PoliceMan {
    func arrestCrimnals() {
        return
    }
}

//3. Declare a protocol ToolMan with a method fixComputer that has no argument and
//return void.

protocol toolMan {
    func fixComputer()\
}
//4. Add a property toolMan to the struct Person with data type ToolMan .

//5. Declare a struct named Engineer that conforms to the ToolMan protocol.

struct Engineer: toolMan {
    func fixComputer(){
        return
    }
}

//6. Create a Person instance with the name “Steven” and also create the relative data you need to declare this instance.

var steven = Person(name: "Steven", toolman: false)


//Part 4: Error Handling in Swift

//enum, struct, class 可使用error protocol
enum GuessNumberGameError:Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: \(targetNumber)")
    }
}

do {
    let game = GuessNumberGame()
    try game.guess(number:20)
}catch  GuessNumberGameError.wrongNumber {
    print("Guess the wrong number")
}

//Read the code above first and paste it in the playground file, there is an error inside the code. Please solve the error by adding a piece of code in the file. Call guess(number:) and pass 20 as the argument after you fix the problem.

//Part 5: A Simple App
//Please implement the app by following the design below (measured in points.)
//UI Requirements:
//Label on the top:
//Top: 100, Leading: 40, Font size: 16, Font Color: White
//Label in the middle:
//Top: 100, Leading: 40, Trailing: 40, Font size: 16, Font Color: White
//Button:
//Bottom: 50, Leading: 40, Trailing: 40, Font size: 16, Font Color: White
//Functional Requirements:
//Each time the user hits the button, the background color and text should change randomly. We give the text below. There are 7 sentences in the array. You can choose 7 kinds of color to cooperate with it. For example, you can take the colors of the rainbow as your color set.
//Hints:
//1. RGB color
//2. Random number in Swift


