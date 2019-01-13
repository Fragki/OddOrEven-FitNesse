import Foundation

protocol OddOrEvenCalculationUseCaseOutput {
    func update(isEven: Bool, number: Int)
}

class OddOrEvenPresenter: OddOrEvenCalculationUseCaseOutput {
    
    private let interface: OddOrEvenViewInterface
    
    init(interface: OddOrEvenViewInterface) {
        self.interface = interface
    }
    
    func update(isEven: Bool, number: Int) {
        let oddOrEvenText = isEven ? "Even" : "Odd"
        interface.update(result: "The number \(number) is an \(oddOrEvenText) number")
    }
}
