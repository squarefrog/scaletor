import XCTest
import Scaletor

final class ChordVoicingTests: XCTestCase {
    func test_Major_ShortStyle() {
        XCTAssertEqual(ChordVoicing.major.describe(using: .short), "M")
    }

    func test_Major_MediumStyle() {
        XCTAssertEqual(ChordVoicing.major.describe(using: .medium), "Maj")
    }

    func test_Major_FullStyle() {
        XCTAssertEqual(ChordVoicing.major.describe(using: .full), "Major")
    }

    func test_Minor_ShortStyle() {
        XCTAssertEqual(ChordVoicing.minor.describe(using: .short), "m")
    }

    func test_Minor_MediumStyle() {
        XCTAssertEqual(ChordVoicing.minor.describe(using: .medium), "min")
    }

    func test_Minor_FullStyle() {
        XCTAssertEqual(ChordVoicing.minor.describe(using: .full), "minor")
    }

    func test_Diminished_ShortStyle() {
        XCTAssertEqual(ChordVoicing.diminished.describe(using: .short), "o")
    }

    func test_Diminished_MediumStyle() {
        XCTAssertEqual(ChordVoicing.diminished.describe(using: .medium), "Dim")
    }

    func test_Diminished_FullStyle() {
        XCTAssertEqual(ChordVoicing.diminished.describe(using: .full), "Diminished")
    }

    func test_DefaultsTo_FullStyle() {
        XCTAssertEqual(ChordVoicing.major.describe(), "Major")
    }
}
