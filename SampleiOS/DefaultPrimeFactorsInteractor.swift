public class DefaultPrimeFactorsInteractor: PrimeFactorsInteractor {

    public let view: PrimeFactorsView

    public init(view: PrimeFactorsView) {
        self.view = view
    }

    public func generate(input: String) {
        if input == "" {
            view.inputWasEmpty()
        } else if let number = input.toInt() {
            let primes = PrimeFactors().generate(number)
            view.primesWereGenerated(primes)
        } else {
            view.inputWasInvalid(input)
        }
    }

}
