//Answer1
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for lottoNumber in lottoNumbers[3...5] {
        print(lottoNumber)
}

//Answer2-1
let numbers = Array(5...10)
for number in numbers{
    print(number)
}

//Answer2-2
for number in stride(from: 10, to: 5, by: -2) {
    print(number)
}

//Answer3
var number = 10
let min = 6
let interal = -2

while number >= min {
    print(number)
    number += interal
}

//Answer4
number = 10
repeat {
    print(number)
    number += interal
} while number >= min

//Answer5
var isRaining = true
if isRaining {
    print("It’s raining, I don’t want to work today.")
}else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//Answer6
var jobLevel = 3

switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job")
}

