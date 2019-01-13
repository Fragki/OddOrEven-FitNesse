import UIKit

protocol OddOrEvenViewInterface {
    func update(result: String)
}

class OddOrEvenViewController: UIViewController {
    
    @IBOutlet weak var outcomeLabel: UILabel?
    
    var interactor: OddOrEvenCalculationUseCase?
    
    @IBAction func didSelectNumber(_ sender: UIButton) {
        guard let text = sender.titleLabel?.text, let number = Int(text) else {
            fatalError("Input is not a number")
        }
        
        interactor?.calculateNumber(number: number)
    }
}

extension OddOrEvenViewController: OddOrEvenViewInterface {
    func update(result: String) {
        outcomeLabel?.text = result
    }
}

