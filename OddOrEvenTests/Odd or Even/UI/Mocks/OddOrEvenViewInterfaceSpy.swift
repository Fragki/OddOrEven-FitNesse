import Foundation
@testable import OddOrEven

class OddOrEvenViewInterfaceSpy: OddOrEvenViewInterface {
    
    var didCallUpdateWithResult: String?
    func update(result: String) {
        didCallUpdateWithResult = result
    }
    
}

