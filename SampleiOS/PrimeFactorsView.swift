public protocol PrimeFactorsView {

    func primesWereGenerated(primes: [Int])
    func inputWasInvalid(input: String)
    func inputWasEmpty()

}
