import Quick
import Nimble
import SampleiOS

class MockPrimeFactorsView : PrimeFactorsView {

    var wasToldPrimesGenerated: Bool
    var givenPrimes: [Int]?

    var wasToldInputWasInvalid: Bool
    var givenInput: String?

    var wasToldInputWasEmpty: Bool

    init() {
        self.wasToldPrimesGenerated = false
        self.wasToldInputWasInvalid = false
        self.wasToldInputWasEmpty = false
    }

    func primesWereGenerated(primes: [Int]) {
        self.wasToldPrimesGenerated = true
        self.givenPrimes = primes
    }

    func inputWasInvalid(input: String) {
        self.wasToldInputWasInvalid = true
        self.givenInput = input
    }

    func inputWasEmpty() {
        self.wasToldInputWasEmpty = true
    }

}

class DefaultPrimeFactorsInteractorSpec: QuickSpec {

    override func spec() {

        describe("Generating a list of primes") {
            let view = MockPrimeFactorsView()
            let interactor = DefaultPrimeFactorsInteractor(view: view)

            it("lets the view know the primes") {
                interactor.generate("12")

                expect(view.wasToldPrimesGenerated).to(beTrue())
                expect(view.givenPrimes).to(equal([2, 2, 3]))
            }

            it("lets the view know that the input was invalid") {
                interactor.generate("bad input")

                expect(view.wasToldInputWasInvalid).to(beTrue())
                expect(view.givenInput).to(equal("bad input"))
            }

            it("lets the view know that the input was empty") {
                interactor.generate("")

                expect(view.wasToldInputWasEmpty).to(beTrue())
            }
        }

    }

}