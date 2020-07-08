import Foundation

extension Array {
    internal func offset(by amount: Int) -> Array {
        precondition(amount < count, "Offset must be less than array count")
        precondition(amount >= 0, "Offset cannot be less than 0")

        guard amount > 0 else { return self }

        return Array(self[amount ..< self.count] + self[0 ..< amount])
    }
}
