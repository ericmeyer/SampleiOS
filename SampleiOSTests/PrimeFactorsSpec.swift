import Quick
import Nimble
import SampleiOS

class PrimeFactorsSpec: QuickSpec {

    func generatePrimes(number: Int) -> [Int] {
        return PrimeFactors().generate(number)
    }

    override func spec() {
        it("factors 1") {
            expect(self.generatePrimes(1)).to(equal([]))
        }

        it("factors 2") {
            expect(self.generatePrimes(2)).to(equal([2]))
        }

        it("factors 3") {
            expect(self.generatePrimes(3)).to(equal([3]))
        }

        it("factors 4") {
            expect(self.generatePrimes(4)).to(equal([2, 2]))
        }

        it("factors 9") {
            expect(self.generatePrimes(9)).to(equal([3, 3]))
        }

        it("factors a large number") {
            let expectedFactors = [2, 2, 5, 7, 11, 11, 13]
            expect(self.generatePrimes(2*2*5*7*11*11*13)).to(equal(expectedFactors))
        }
    }

}
