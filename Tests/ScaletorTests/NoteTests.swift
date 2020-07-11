import Scaletor
import XCTest

class NoteTests: XCTestCase {
    func test_Natural_CanBeCreated() throws {
        let note = try? Note("A")
        XCTAssertEqual(note, Note(pitch: .a))
    }

    func test_Sharp_CanBeCreated_UsingHash() throws {
        let note = try? Note("A#")
        XCTAssertEqual(note, Note(pitch: .a, accidental: .sharp))
    }

    func test_Sharp_CanBeCreated_UsingSymbol() throws {
        let note = try? Note("A♯")
        XCTAssertEqual(note, Note(pitch: .a, accidental: .sharp))
    }

    func test_Flat_CanBeCreated_UsingLetter() throws {
        let note = try? Note("Ab")
        XCTAssertEqual(note, Note(pitch: .a, accidental: .flat))
    }

    func test_Flat_CanBeCreated_UsingSymbol() throws {
        let note = try? Note("A♭")
        XCTAssertEqual(note, Note(pitch: .a, accidental: .flat))
    }

    func test_DoesNotFlatten_LowerCaseBNatural() throws {
        let note = try? Note("b")
        XCTAssertEqual(note, Note(pitch: .b, accidental: .natural))
    }

    func test_Throws_WithInvalidLetter() {
        var error: Error?
        XCTAssertThrowsError(try Note("h")) { error = $0 }
        XCTAssertEqual(error as? NoteError, .invalidNote)
    }

    func test_Throws_WithTooManyLetters() {
        var error: Error?
        XCTAssertThrowsError(try Note("Bbb")) { error = $0 }
        XCTAssertEqual(error as? NoteError, .outOfBounds)
    }
}
