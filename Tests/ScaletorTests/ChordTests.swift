import XCTest
import Scaletor

final class ChordTests: XCTestCase {
    func test_Major_ShortStyle() {
        XCTAssertEqual(Chord.major.describe(using: .short), "M")
    }

    func test_Major_MediumStyle() {
        XCTAssertEqual(Chord.major.describe(using: .medium), "Maj")
    }

    func test_Major_FullStyle() {
        XCTAssertEqual(Chord.major.describe(using: .full), "Major")
    }

    func test_Minor_ShortStyle() {
        XCTAssertEqual(Chord.minor.describe(using: .short), "m")
    }

    func test_Minor_MediumStyle() {
        XCTAssertEqual(Chord.minor.describe(using: .medium), "min")
    }

    func test_Minor_FullStyle() {
        XCTAssertEqual(Chord.minor.describe(using: .full), "minor")
    }

    func test_Diminished_ShortStyle() {
        XCTAssertEqual(Chord.diminished.describe(using: .short), "o")
    }

    func test_Diminished_MediumStyle() {
        XCTAssertEqual(Chord.diminished.describe(using: .medium), "Dim")
    }

    func test_Diminished_FullStyle() {
        XCTAssertEqual(Chord.diminished.describe(using: .full), "Diminished")
    }

    func test_DefaultsTo_FullStyle() {
        XCTAssertEqual(Chord.major.describe(), "Major")
    }
}
