//Answer1-1
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
}

//Answer1-2
func getPricein(gasline: Gasoline) -> Double {
    switch gasline {
    case .oil92:
        return 29.5
    case .oil95:
        return 30.5
    case .oil98:
        return 31.5
    case .diesel:
        return 28.5
    }
}

//Answer1-3
Gasoline.oil92.rawValue

//Answer1-4

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
