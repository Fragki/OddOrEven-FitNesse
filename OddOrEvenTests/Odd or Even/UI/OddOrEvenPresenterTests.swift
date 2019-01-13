import XCTest
@testable import OddOrEven

class OddOrEvenPresenterTests: XCTestCase {

    func test_update_isEvenIsTrue_NumberIs4_callsInterfaceWithCorrectFormat() {
        let oddOrEvenViewInterfaceSpy = OddOrEvenViewInterfaceSpy()
        let sut = OddOrEvenPresenter(interface: oddOrEvenViewInterfaceSpy)

        sut.update(isEven: true, number: 4)
        
        let expectedResult = "The number 4 is an Even number"
        XCTAssertEqual(expectedResult, oddOrEvenViewInterfaceSpy.didCallUpdateWithResult)
    }
    
    func test_update_isEvenIsFalse_NumberIs3_callsInterfaceWithCorrectFormat() {
        let oddOrEvenViewInterfaceSpy = OddOrEvenViewInterfaceSpy()
        let sut = OddOrEvenPresenter(interface: oddOrEvenViewInterfaceSpy)
        
        sut.update(isEven: false, number: 3)
        
        let expectedResult = "The number 3 is an Odd number"
        XCTAssertEqual(expectedResult, oddOrEvenViewInterfaceSpy.didCallUpdateWithResult)
    }
}
