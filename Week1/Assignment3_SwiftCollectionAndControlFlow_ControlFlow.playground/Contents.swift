//Answer1
var myFriends = [String]()

//Answer2
myFriends = ["Ian", "Bomi", "Kevin"]

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
//沒有 index 5的朋友，因為藉由Count method可知，myFriends只有4
myFriends.count

//Answer7
myFriends[0]

//Answer8
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
