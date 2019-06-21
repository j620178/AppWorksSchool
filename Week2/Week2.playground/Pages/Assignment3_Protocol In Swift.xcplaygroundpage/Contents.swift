//Answer1
struct Person {
    let name: String
    var toolMan: ToolMan //for Answer4
}

protocol PoliceMan {
    func arrestCriminals()
}


//Answer2
extension Person: PoliceMan {
    func arrestCriminals() {
        print("I'm PoliceMan")
    }
}


//Answer3
protocol ToolMan {
    func fixComputer()
}


//Answer4
/*
struct Person {
    let name: String
    var toolMan: ToolMan
}
*/


//Answer5
struct Engineer: ToolMan {
    func fixComputer() {
        print("I'm Engineer&ToolMan")
    }
}

let aPerson = Person(name: "Steven", toolMan: Engineer())
