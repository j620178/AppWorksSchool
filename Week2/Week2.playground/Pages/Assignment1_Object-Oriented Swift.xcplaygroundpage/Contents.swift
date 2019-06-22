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
zoo.weeklyHot = Tigher(gender: Gender.female)
zoo.weeklyHot = Elephant(gender: Gender.female)
zoo.weeklyHot = Horse(gender: Gender.female)


//Answer4
/*
 1.物件為類別的實體，透過物件建立程式的基本單元，加強維護性
 2.物件可以資料 (let/var) 與方法 (func) 封裝在一起，避免程式分散，不易閱讀之問題
 3.透過可增加程式的重複利用性，實現 DRY 原則
 4.藉由繼承強化程式的擴充性，若兩個物件其功能為上下關係(如戰機之於飛機)，即可使用繼承飛機基本功能，並擴充戰機專屬功能
 5.物件亦是一種型別，可作為方法之參數，透過型別可增加參數傳遞時之安全性，避免非預期之物件傳遞至方法內
 */


//Answer5
/*
 1.Class： 可以被繼承，為 reference type ，需手動建立建構器 (init)
 2.Struct： 不可被繼承，為 value type ，程式會自動產生預設建構器 (init) 、亦可客製化建構器 (init)
 */


//Answer6
/*
 1.instance method​： 實例方法建構於類別實體之上，需先產生類別實體物件後，才能救叫使用其方法
 2.type method： 類別方法建構於類別之上，無需產生出類別實體物件，即可使用。欲使用類別方法須在宣告方法前加上 static 關鍵字，如 static func()
 */


//Answer7
//建構器可為 struct 與 class 設定儲存型屬性的初始賦值之功能，亦可建立兩個以上之建構器，如不同溫度單位數值賦予初始值


//Answer8
//於 struct 與 class 內，儲存型屬性名稱與建構器內名稱相同時，加上 self 用以解決產生的衝突


//Answer9
/*
 1.reference type： 當使用『 = 』賦值的時候，是將記憶體位置賦予給另一個變數／常數，所以只要其中一個變數／常數更改，另一個亦『會』更改
 2.value type： 當使用『 = 』賦值的時候，是複製一份一樣的內容賦予給另一個變數／常數，所以其中一個變數／常數更改，另一個『不會』更改
*/
