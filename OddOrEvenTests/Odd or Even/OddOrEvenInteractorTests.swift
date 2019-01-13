import XCTest
@testable import OddOrEven

class OddOrEvenInteractorTests: XCTestCase {
    
    func test_calculateNumber_callsIsEvenOnCalculator() {
        let output = OddOrEvenCalculationUseCaseOutputSpy()
        let mockOddEvenCalculator = OddEvenCalculatorFake()
        let sut = OddOrEvenInteractor(output: output, oddEvenCalculator: mockOddEvenCalculator)
        
        sut.calculateNumber(number: 5)
        
        XCTAssertEqual(5, mockOddEvenCalculator.isEvenCalledNumber)
    }
    
    func test_calculateNumber_callsUptadeOnOutoutWithOddEvenCalculatorsResponse() {
        let output = OddOrEvenCalculationUseCaseOutputSpy()
        let stubOddEvenCalculator = OddEvenCalculatorFake()
        stubOddEvenCalculator.isEvenReturnedValue = true
        let sut = OddOrEvenInteractor(output: output, oddEvenCalculator: stubOddEvenCalculator)
        
        sut.calculateNumber(number: 4)
        
        XCTAssertTrue(output.calledUpdate!.isEven)
        XCTAssertEqual(4, output.calledUpdate!.number)
    }
    
}
