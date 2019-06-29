//Answer1-1 ~ 1-3
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
    
    func getPrice() -> Double {
        switch self {
        case .oil92: return 29.5
        case .oil95: return 30.5
        case .oil98: return 31.5
        case .diesel: return 28.5
        }
    }
}

Gasoline.oil92.rawValue


//Answer1-4
//可以在建立的時候，把資料夾帶在 enum 變數中，並透過 switch 判斷變數屬於那個 case ，再透過 let 取出夾帶在 enum 的值，使用方式如下：
enum Position {
    case wgs84(x: Double, y: Double)
    case twd97(x: Double, y: Double)
}

let taipeiMainStation = Position.wgs84(x: 121.516939, y: 25.047784)

switch taipeiMainStation {
    case .wgs84(let x, let y): print("Latitude: \(y), Latitude: \(x)")
    case .twd97(let x, let y): print("X: \(x), Y: \(y)")
}


//Answer2-1
class Pet {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Person {
    var pet: Pet?
}


//Answer2-2
let person = Person()
person.pet = Pet(name: "Pig")

func hasPet(person: Person) {
    guard let aPet = person.pet else { return }
    print(aPet.name)
}

hasPet(person: person)


//Answer2-3
let anotherPerson = Person()
anotherPerson.pet = Pet(name: "Dog")

func hasAnotherPet(person: Person) {
    if let aPet = person.pet {
        print(aPet.name)
    }
}

hasAnotherPet(person: anotherPerson)
