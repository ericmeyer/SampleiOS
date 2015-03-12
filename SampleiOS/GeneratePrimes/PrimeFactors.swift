public class PrimeFactors {

    public init() {}
    
    public func generate(number: Int) -> [Int] {
        var remainder = number
        var factors: [Int] = []
        if (number < 2) {
            return factors
        }
        for candidate in 2...remainder {
            while (remainder % candidate == 0) {
                factors += [candidate]
                remainder /= candidate
            }
        }
        return factors
    }

}
