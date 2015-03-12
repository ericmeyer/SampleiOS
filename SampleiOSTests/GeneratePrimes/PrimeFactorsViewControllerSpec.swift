import Quick
import Nimble
import SampleiOS
import UIKit

class MockPrimeFactorsInteractor : PrimeFactorsInteractor {

    var wasToldToGeneratePrimesFor: String

    init() {
        self.wasToldToGeneratePrimesFor = ""
    }

    func generate(input: String) {
        self.wasToldToGeneratePrimesFor = input
    }

}

class PrimeFactorsViewControllerSpec: QuickSpec {

    override func spec() {

        let controller = PrimeFactorsViewController()

        describe("Loading the view") {
            it("initializes the interactor") {
                controller.viewDidLoad()
                expect(controller.interactor).toNot(beNil())
            }
        }

        describe("Generating primes") {
            let interactor = MockPrimeFactorsInteractor()
            let numberToFactor = UITextField()

            beforeEach() {
                controller.interactor = interactor
                controller.numberToFactor = numberToFactor
            }

            it("delegates to the interactor") {
                controller.numberToFactor!.text = "123"

                controller.generatePrimes()

                expect(interactor.wasToldToGeneratePrimesFor).to(equal("123"))
            }
        }
    }

}
