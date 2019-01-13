@testable import OddOrEven

class OddOrEvenCalculationUseCaseOutputSpy: OddOrEvenCalculationUseCaseOutput {
    
    var calledUpdate: (isEven: Bool, number: Int)?
    func update(isEven: Bool, number: Int) {
        calledUpdate = (isEven, number)
    }
}
