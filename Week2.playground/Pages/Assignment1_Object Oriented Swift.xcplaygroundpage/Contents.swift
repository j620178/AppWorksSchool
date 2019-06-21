//Answer1
enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    func eat() {
        print("I eat grass!")
    }
    init(gender: Gender) {
        self.gender = gender
    }
}

//Answer2
class Elephant: Animal {
    override func eat() {
        print("I eat everything!")
    }
}

class Tigher: Animal {
    override func eat() {
        print("I eat meat!")
    }
}

class Horse: Animal {
    override func eat() {
        print("I eat carrot!")
    }
}

//Answer3
class Zoo {
    var weeklyHot: Animal
    
    init(animal: Animal) {
        self.weeklyHot = animal
    }
}

let zoo = Zoo(animal: Tigher(gender: Gender.male))
zoo.weeklyHot = Elephant(gender: Gender.female)
zoo.weeklyHot = Horse(gender: Gender.female)

//Answer4
/*
 1.
 2.
 */

//Answer5
/*
 1.Class： 可以被繼承，為 reference type
 2.Struct： 不可被繼承，為 value type
 */

//Answer6
/*
 1.instance method​：
 2.type method：
 */

//Answer7
/*
 1.Class： 需手動新增init
 2.Struct： 自動產生init
 */

//Answer8
/*
 1.instance method​：
 2.type method：
 */

//Answer9
/*
 1.reference type： 使用 aesign 的時候，是將記憶體位置賦予給另一個變數／常數，所以只要其中一個變數／常數更改，另一個亦會更改
 2.value type： 使用 aesign 的時候，是複製一份一樣的內容賦予給另一個變數／常數，所以其中一個變數／常數更改，另一個不會更改
 */
