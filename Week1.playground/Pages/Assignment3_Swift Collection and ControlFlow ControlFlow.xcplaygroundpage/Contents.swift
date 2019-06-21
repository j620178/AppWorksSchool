//Answer1
var myFriends = [String]()

//Answer2
// before: myFriends = ["Ian", "Bomi", "Kevin"]
myFriends += ["Ian", "Bomi", "Kevin"]

//Answer3
myFriends.append("Michael")

//Answer4
myFriends.insert("Kevin", at: 0)
myFriends.remove(at: 3)

//Answer5
for myFriend in myFriends {
    print(myFriend)
}

//Answer6
//沒有 index 5 的朋友，因為藉由 Count method 可知， myFriends 只有4 //補充：Index out of range
myFriends.count

//Answer7
myFriends[0] //補充： 如果 myFriends 為空陣列，Compile會提示 Error

//Answer8
//補充說明： 如果 myFriends 為空陣列， Compile 會提示 Error
myFriends[myFriends.count - 1]

//Answer9
var ​myCountryNumber​ = [String: Int]()

//Answer10
​myCountryNumber​ = ["US": 1, "GB": 44, "JP": 81]

//Answer11
​myCountryNumber​["GB"] = 0

//Answer12
var emptyDictionary = [String: Int]()

//Answer12
​myCountryNumber​["GB"] = nil //or ​myCountryNumber​.removeValue(forKey: "GB")
