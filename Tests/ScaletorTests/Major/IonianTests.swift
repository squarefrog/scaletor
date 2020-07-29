import XCTest
import Scaletor

final class IonianTests: XCTestCase {
    func test_Generate_C_Ionian_Scale() {
        assertMatches("C D E F G A B") {
            try Scaletor.makeScale(from: Note(pitch: .c), for: MajorMode.ionian)
        }
    }

    func test_Generate_G_Ionian_Scale() {
        assertMatches("G A B C D E F♯") {
            try Scaletor.makeScale(from: Note(pitch: .g), for: MajorMode.ionian)
        }
    }

    func test_Generate_D_Ionian_Scale() {
        assertMatches("D E F♯ G A B C♯") {
            try Scaletor.makeScale(from: Note(pitch: .d), for: MajorMode.ionian)
        }
    }

    func test_Generate_A_Ionian_Scale() {
        assertMatches("A B C♯ D E F♯ G♯") {
            try Scaletor.makeScale(from: Note(pitch: .a), for: MajorMode.ionian)
        }
    }

    func test_Generate_E_Ionian_Scale() {
        assertMatches("E F♯ G♯ A B C♯ D♯") {
            try Scaletor.makeScale(from: Note(pitch: .e), for: MajorMode.ionian)
        }
    }

    func test_Generate_B_Ionian_Scale() {
        assertMatches("B C♯ D♯ E F♯ G♯ A♯") {
            try Scaletor.makeScale(from: Note(pitch: .b), for: MajorMode.ionian)
        }
    }

    func test_Generate_Gb_Ionian_Scale() {
        assertMatches("G♭ A♭ B♭ C♭ D♭ E♭ F") {
            try Scaletor.makeScale(from: Note(pitch: .g, accidental: .flat), for: MajorMode.ionian)
        }
    }

    func test_Generate_Db_Ionian_Scale() {
        assertMatches("D♭ E♭ F G♭ A♭ B♭ C") {
            try Scaletor.makeScale(from: Note(pitch: .d, accidental: .flat), for: MajorMode.ionian)
        }
    }

    func test_Generate_Ab_Ionian_Scale() {
        assertMatches("A♭ B♭ C D♭ E♭ F G") {
            try Scaletor.makeScale(from: Note(pitch: .a, accidental: .flat), for: MajorMode.ionian)
        }
    }

    func test_Generate_Eb_Ionian_Scale() {
        assertMatches("E♭ F G A♭ B♭ C D") {
            try Scaletor.makeScale(from: Note(pitch: .e, accidental: .flat), for: MajorMode.ionian)
        }
    }

    func test_Generate_Bb_Ionian_Scale() {
        assertMatches("B♭ C D E♭ F G A") {
            try Scaletor.makeScale(from: Note(pitch: .b, accidental: .flat), for: MajorMode.ionian)
        }
    }

    func test_Generate_F_Ionian_Scale() {
        assertMatches("F G A B♭ C D E") {
            try Scaletor.makeScale(from: Note(pitch: .f), for: MajorMode.ionian)
        }
    }
}
