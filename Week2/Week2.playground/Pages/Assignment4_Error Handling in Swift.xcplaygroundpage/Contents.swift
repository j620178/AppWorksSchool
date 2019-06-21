enum GuessNumberGameError: Error {
    case wrongNumber
}

class GuessNumberGame {
    var targetName = 10
    func guess(number: Int) throws {
        guard number == targetName else {
            throw GuessNumberGameError.wrongNumber
        }
        
        print("Guess the right number: \(targetName)")
    }
}

let game = GuessNumberGame()

do {
    try game.guess(number: 20)
} catch let error {
    print(error)
}
