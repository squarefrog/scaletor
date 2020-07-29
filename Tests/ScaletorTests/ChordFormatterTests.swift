import XCTest
import Scaletor

final class ChordFormatterTests: XCTestCase {
    var formatter = ChordFormatter()

    func testFormatsMajorChordUsingShortStyle() {
        formatter.style = .short

        let description = formatter.string(from: Chord.major)

        XCTAssertEqual(description, "C")
    }

    func testFormatsMajorChordUsingMediumStyle() {
        formatter.style = .medium

        let description = formatter.string(from: Chord.major)

        XCTAssertEqual(description, "C maj")
    }

    func testFormatsMajorChordUsingFullStyle() {
        formatter.style = .full

        let description = formatter.string(from: Chord.major)

        XCTAssertEqual(description, "C major")
    }

    func testFormatsMinorChordUsingShortStyle() {
        formatter.style = .short

        let description = formatter.string(from: Chord.minor)

        XCTAssertEqual(description, "Cm")
    }

    func testFormatsMinorChordUsingMediumStyle() {
        formatter.style = .medium

        let description = formatter.string(from: Chord.minor)

        XCTAssertEqual(description, "C min")
    }

    func testFormatsMinorChordUsingFullStyle() {
        formatter.style = .full

        let description = formatter.string(from: Chord.minor)

        XCTAssertEqual(description, "C minor")
    }

    func testFormatsDiminishedChordUsingShortStyle() {
        formatter.style = .short

        let description = formatter.string(from: Chord.diminished)

        XCTAssertEqual(description, "Cº")
    }

    func testFormatsDiminishedChordUsingMediumStyle() {
        formatter.style = .medium

        let description = formatter.string(from: Chord.diminished)

        XCTAssertEqual(description, "C dim")
    }

    func testFormatsDiminishedChordUsingFullStyle() {
        formatter.style = .full

        let description = formatter.string(from: Chord.diminished)

        XCTAssertEqual(description, "C diminished")
    }

    func testFormatsAugmentedChordUsingShortStyle() {
        formatter.style = .short

        let description = formatter.string(from: Chord.augmented)

        XCTAssertEqual(description, "C+")
    }

    func testFormatsAugmentedChordUsingMediumStyle() {
        formatter.style = .medium

        let description = formatter.string(from: Chord.augmented)

        XCTAssertEqual(description, "C aug")
    }

    func testFormatsAugmentedChordUsingFullStyle() {
        formatter.style = .full

        let description = formatter.string(from: Chord.augmented)

        XCTAssertEqual(description, "C augmented")
    }
}

private extension Chord {
    static let major = Chord(root: Note(pitch: .c), voicing: .major)
    static let minor = Chord(root: Note(pitch: .c), voicing: .minor)
    static let diminished = Chord(root: Note(pitch: .c), voicing: .diminished)
    static let augmented = Chord(root: Note(pitch: .c), voicing: .augmented)
}
