@testable import Scaletor
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

    func test_Description() {
        let note = Note(pitch: .b, accidental: .sharp)
        XCTAssertEqual("\(note)", "B♯")
    }

    func test_Id_MatchesNaturalPitch() {
        let note = Note(pitch: .c, accidental: .natural)
        XCTAssertEqual(note.id, Pitch.c.id)
    }

    func test_Id_MatchesFlattenedPitch() {
        let note = Note(pitch: .c, accidental: .flat)
        XCTAssertEqual(note.id, Pitch.b.id)
    }

    func test_Id_MatchesDoubleFlattenedPitch() {
        let note = Note(pitch: .c, accidental: .doubleFlat)
        XCTAssertEqual(note.id, Pitch.b.id - 1)
    }

    func test_Id_MatchesSharpenedPitch() {
        let note = Note(pitch: .c, accidental: .sharp)
        XCTAssertEqual(note.id, Pitch.c.id + 1)
    }

    func test_Id_MatchesDoubleSharpenedPitch() {
        let note = Note(pitch: .c, accidental: .doubleSharp)
        XCTAssertEqual(note.id, Pitch.d.id)
    }

    func test_Id_WrapsUpperBounds() {
        let note = Note(pitch: .g, accidental: .doubleSharp)
        XCTAssertEqual(note.id, Pitch.a.id)
    }

    func test_Id_WrapsLowerBounds() {
        let note = Note(pitch: .a, accidental: .doubleFlat)
        XCTAssertEqual(note.id, Pitch.g.id)
    }
}
