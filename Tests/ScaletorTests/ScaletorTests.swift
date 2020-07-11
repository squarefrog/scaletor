import Scaletor
import XCTest

class ScaletorTests: XCTestCase {
    func test_Throws_WithDoubleFlat() {
        var error: Error?
        let note = Note(pitch: .a, accidental: .doubleFlat)
        XCTAssertThrowsError(try Scaletor.generateScale(from: note, for: .ionian)) { error = $0 }
        XCTAssertEqual(error as? ScaleError, .theoreticalKey)
    }

    func test_Throws_WithDoubleSharp() {
        var error: Error?
        let note = Note(pitch: .a, accidental: .doubleSharp)
        XCTAssertThrowsError(try Scaletor.generateScale(from: note, for: .ionian)) { error = $0 }
        XCTAssertEqual(error as? ScaleError, .theoreticalKey)
    }
}
