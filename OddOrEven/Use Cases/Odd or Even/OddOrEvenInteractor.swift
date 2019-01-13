import Foundation

protocol OddOrEvenCalculationUseCase {
    func calculateNumber(number: Int)
}

class OddOrEvenInteractor: OddOrEvenCalculationUseCase {
    
    private let output: OddOrEvenCalculationUseCaseOutput
    private let oddEvenCalculator: OddEvenCalculator

    init(output: OddOrEvenCalculationUseCaseOutput, oddEvenCalculator: OddEvenCalculator) {
        self.output = output
        self.oddEvenCalculator = oddEvenCalculator
    }
    
    func calculateNumber(number: Int) {
        let isEven = oddEvenCalculator.isEven(number: number)
        output.update(isEven: isEven, number: number)
    }
}
