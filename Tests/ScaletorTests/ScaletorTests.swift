@testable import Scaletor
import XCTest

class ScaletorTests: XCTestCase {
    func test_Throws_WithDoubleFlat() {
        var error: Error?
        let note = Note(pitch: .a, accidental: .doubleFlat)
        XCTAssertThrowsError(try Scaletor.generateScale(from: note, for: MajorMode.ionian)) { error = $0 }
        XCTAssertEqual(error as? ScaleError, .theoreticalKey)
    }

    func test_Throws_WithDoubleSharp() {
        var error: Error?
        let note = Note(pitch: .a, accidental: .doubleSharp)
        XCTAssertThrowsError(try Scaletor.generateScale(from: note, for: MajorMode.ionian)) { error = $0 }
        XCTAssertEqual(error as? ScaleError, .theoreticalKey)
    }

    func test_ReturnsChords_forIonianMode() {
        let root = Note(pitch: .c)
        let mode = MajorMode.ionian
        let chords = try? Scaletor.makeChords(with: root, for: mode)
        XCTAssertEqual(chords, ionianChords)
    }

    func test_ReturnsChords_forLocrianMode() {
        let root = Note(pitch: .b)
        let mode = MajorMode.locrian
        let chords = try? Scaletor.makeChords(with: root, for: mode)
        XCTAssertEqual(chords, locrianChords)
    }

    private var ionianChords: [Chord] {
        [ Chord(root: Note(pitch: .c), voicing: .major),
          Chord(root: Note(pitch: .d), voicing: .minor),
          Chord(root: Note(pitch: .e), voicing: .minor),
          Chord(root: Note(pitch: .f), voicing: .major),
          Chord(root: Note(pitch: .g), voicing: .major),
          Chord(root: Note(pitch: .a), voicing: .minor),
          Chord(root: Note(pitch: .b), voicing: .diminished) ]
    }

    private var locrianChords: [Chord] {
        var chords = ionianChords
        let bDim = chords.removeLast()
        chords.insert(bDim, at: 0)
        return chords
    }
}
