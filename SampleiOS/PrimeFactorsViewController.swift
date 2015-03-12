import UIKit

public class PrimeFactorsViewController: UIViewController, PrimeFactorsView {

    public var interactor: PrimeFactorsInteractor?

    @IBOutlet public weak var numberToFactor: UITextField!

    public override func viewDidLoad() {
        super.viewDidLoad()
        interactor = DefaultPrimeFactorsInteractor(view: self)
    }

    @IBAction public func generatePrimes() {
        interactor?.generate(numberToFactor!.text)
    }

    public func primesWereGenerated(primes: [Int]) {
        // Display Primes to User
        NSLog("Primes: %@", primes)
    }

    public func inputWasInvalid(input: String) {
        // Display Error Message to User
        NSLog("Input was invalid: %@", input)
    }

    public func inputWasEmpty() {
        // Display Error Message to User
        NSLog("Input was empty")
    }

}
