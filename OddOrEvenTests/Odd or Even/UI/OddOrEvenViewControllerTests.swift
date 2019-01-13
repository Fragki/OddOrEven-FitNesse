import Foundation
import XCTest

@testable import OddOrEven

class OddOrEvenViewControllerTests: XCTestCase {

    func test_didSelectNumber_callsInteractorInputWithCorrectArgument() {
        let sut = OddOrEvenViewController()
        let spyUseCaseInput =  OddOrEvenCalculationUseCaseSpy()
        sut.interactor = spyUseCaseInput
        
        let button = UIButton(frame: .zero)
        button.setTitle("7", for: .normal)
        sut.didSelectNumber(button)
        
        XCTAssertEqual(7, spyUseCaseInput.calculateNumberNumberCalled)
    }
    
    func test_update_withAString_showsTheStringInTheOutcomeLabel() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut: OddOrEvenViewController = storyboard.instantiateViewController(withIdentifier: "OddOrEvenViewController") as! OddOrEvenViewController
        
        _ = sut.view
        sut.update(result: "a string")
        
        XCTAssertEqual("a string", sut.outcomeLabel?.text)
    }
}
