import Foundation

@objc(OddOrEvenUseCase)

class OddOrEvenUseCase : NSObject, SlimDecisionTable, OddOrEvenViewInterface {
    
    //MARK: Inputs
    
    var number = ""
    var text: String?
    
    //MARK: <SlimDecisionTable>
    
    func execute() {
        let oddEvenCalculator = OddEvenCalculator()
        let oddOrEvenPresenter = OddOrEvenPresenter(interface: self)
        let sut = OddOrEvenInteractor(output: oddOrEvenPresenter, oddEvenCalculator: oddEvenCalculator)
        sut.calculateNumber(number: Int(number)!)
    }
    
    func update(result: String) {
        text = result
    }
}
