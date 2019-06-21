//Answer1
let Pi = 3.14159

//Answer2
let x = 6
let y = 4

let average = (x + y) / 2

//Answer3-1
let newX = 6.0 //or newX: Double
let newY = 4.0 //or newY: Double
let newAverage = (x + y) / 2

//Answer3-2
/*
( 10 / 3 ): 分子分母型別皆為 Int ，所以運算後得到結果亦會是 Int ，其數值為3
( 10.0 / 3.0 ): 分子分母型別皆為 Double ，所以運算後得到結果亦會是 Double ，數值為3.33333...
*/

//Answer4
var flag: Bool = true
var inputString: String = "Hello world."
var bitsInBite: Int = 8
var averageScore: Double =  86.85

//Answer5
var salary = 22000
salary += 28000

//Answer6
//==

//Answer7
let number1 = 10
let number2 = 3
let remain = number1 % number2

//Answer8
/*
let: 為常數， assign 其數值後，即無法再改變。多使用於儲存固定不變之數值或一次性使用數值
var: 為變數， assign 其數值後，可任意改變其數值。多使用於儲存會再次改變之數值
*/

//Answer9
/*
1.使用駝峰式 (Camel Case) 命名
2.不使用數字與空格開頭
3.不使用數學符號， emoji 可用但不建議使用
4.不只用保留字
*/

//Answer10
/*
Type Inference: Swift 會使用 assign 的數值型別推論宣告變數/常數之型別，所以在宣告變數/常數時，不需要標明其型別，亦可在宣告時標明其型別
另外 Swift 有 Float 與 Doublex 兩種浮點數型別，在 assign 數值如4.5的時候，預設會是使用 Double
*/

//Answer11
//phoneNumber 在宣告時，其型別一開始已設為 Int ，便不可將非 Int 型別資料寫入該變數中，以減少錯誤發生可能

CustomStringConvertible
