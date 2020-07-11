import Foundation

public enum ScaleError: Error {
    /// User tried to create a scale with a double-flat or double-sharp root
    /// note.
    case theoreticalKey

    var localizedDescription: String { "Theoretical keys not supported" }
}
