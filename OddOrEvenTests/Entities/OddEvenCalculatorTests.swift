import XCTest
@testable import OddOrEven

class OddEvenCalculatorTests: XCTestCase {

    func test_isEven_returnsTrue_forNumber0() {
        let sut = OddEvenCalculator()
        
        let result = sut.isEven(number: 0)
        
        XCTAssertTrue(result)
    }
    
    func test_isEven_returnsTrue_forNumber2() {
        let sut = OddEvenCalculator()
        
        let result = sut.isEven(number: 2)
        
        XCTAssertTrue(result)
    }

    func test_isEven_returnsTrue_forNumber4() {
        let sut = OddEvenCalculator()
        
        let result = sut.isEven(number: 4)
        
        XCTAssertTrue(result)
    }
    
    func test_isEven_returnsTrue_forNumberMinus4() {
        let sut = OddEvenCalculator()
        
        let result = sut.isEven(number: -4)
        
        XCTAssertTrue(result)
    }
    
    func test_isEven_returnsFalse_forNumber1() {
        let sut = OddEvenCalculator()
        
        let result = sut.isEven(number: 1)
        
        XCTAssertFalse(result)
    }
    
    func test_isEven_returnsFalse_forNumber3() {
        let sut = OddEvenCalculator()
        
        let result = sut.isEven(number: 3)
        
        XCTAssertFalse(result)
    }
    
    func test_isEven_returnsFalse_forNumberMinus3() {
        let sut = OddEvenCalculator()
        
        let result = sut.isEven(number: -3)
        
        XCTAssertFalse(result)
    }
}
