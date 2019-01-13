import Foundation
@testable import OddOrEven

class OddOrEvenCalculationUseCaseSpy: OddOrEvenCalculationUseCase {
    
    var calculateNumberNumberCalled: Int?
    func calculateNumber(number: Int) {
        calculateNumberNumberCalled = number
    }
    
    
 
}
