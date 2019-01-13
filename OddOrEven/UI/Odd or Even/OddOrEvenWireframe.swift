import Foundation

class OddOrEvenWireframe {
    func configure(oddOrEvenViewController: OddOrEvenViewController, oddEvenCalculator: OddEvenCalculator) {
        let oddOrEvenPresenter = OddOrEvenPresenter(interface: oddOrEvenViewController)
        let oddOrEvenInteractor = OddOrEvenInteractor(output: oddOrEvenPresenter, oddEvenCalculator: oddEvenCalculator)
        
        oddOrEvenViewController.interactor = oddOrEvenInteractor
    }
}
