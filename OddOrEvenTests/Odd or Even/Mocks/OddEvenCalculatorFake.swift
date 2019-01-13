@testable import OddOrEven

class OddEvenCalculatorFake: OddEvenCalculator {
    
    var isEvenReturnedValue = false
    private(set) var isEvenCalledNumber: Int?
    override func isEven(number: Int) -> Bool {
        isEvenCalledNumber = number
        return isEvenReturnedValue
    }
}
