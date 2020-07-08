import Foundation

extension Array {
    internal func item(atWrappedIndex wrappedIndex: Int) -> Element {
        self[(wrappedIndex % count + count) % count]
    }
}
