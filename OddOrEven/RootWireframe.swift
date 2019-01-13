import Foundation

class RootWireframe {
    
    func configure(oddOrEvenViewController: OddOrEvenViewController) {
        OddOrEvenWireframe().configure(oddOrEvenViewController: oddOrEvenViewController, oddEvenCalculator: OddEvenCalculator())
    }
}
